#!/bin/sh

file=~/.pomodoro
content=$(cat $file)

focus_seconds=1500
pause_seconds=300

start_phase() {
    phase=$1
    seconds=$2

    current_date=$(date +%s)
    end_date=$( echo $current_date + $seconds | bc )

    echo "$phase $end_date" > $file
}

phase_transition_trigger() {
    # the extra echo prevents i3bar jankiness with mpv inside
    echo ""
    mpv ~/music/ding.mp3 2>/dev/null >/dev/null
}

get_time() {
    current_date=$(date +%s)
    end_date=$(echo $content | cut -d " " -f 2)

    if [ $end_date -gt $current_date ]; then
        diff=$(echo $end_date - $current_date | bc)
        date -u --date @$diff +%M:%S
    else
        case $content in
            focus*)
                start_phase pause $pause_seconds
                phase_transition_trigger
            ;;
            pause*)
                end_pomodoro
                phase_transition_trigger
            ;;
        esac
    fi
}

end_pomodoro() {
    echo "pomodoro" > $file
}

case $content in
focus*)
    echo -n f
    get_time
    if [[ "x$BLOCK_BUTTON" == "x1" ]]; then
        start_phase pause $pause_seconds
    fi
    ;;
pause*)
    echo -n p
    get_time
    if [[ "x$BLOCK_BUTTON" == "x1" ]]; then
        end_pomodoro
    fi
    ;;
*)
    echo s
    if [[ "x$BLOCK_BUTTON" == "x1" ]]; then
        start_phase focus $focus_seconds
    fi
    ;;
esac

