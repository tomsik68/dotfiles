" thanks http://ddrscott.github.io/blog/2016/negative-modulo/ ! you saved me
" bunch of my time
function! s:mod(n,m)
  return ((a:n % a:m) + a:m) % a:m
endfunction

" get status of build
function! BuildStatus()
    let l = len(neomake#GetJobs())
    let t = strftime('%s')
    let indicators = ['|', '/', '-', '\']
    if l == 0
        return '✓'
    else
        return indicators[s:mod(t, len(indicators))]
    endif
endfunction

set statusline=
" external builder status
set statusline+=\ %{BuildStatus()}\ 
set statusline+=%{neomake#statusline#QflistStatus()}\ 
" git info
set statusline+=%{fugitive#statusline()}\ 
" information about current file
set statusline+=%f\ %h%w%M%R\ %=
" end of default statusline (with ruler)
set statusline+=%(%l/%L,%c%V\ %=\ %P%)
