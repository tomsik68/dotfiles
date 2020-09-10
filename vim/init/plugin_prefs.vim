
" Ultisnips
let g:UltiSnipsExpandTrigger="<c-p>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
set rtp+=~/dotfiles/vim/ultisnips-snippets

"Rooter
let g:rooter_patterns = ['Makefile', 'build.gradle', '.git']

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:UltiSnipsSnippetsDir = "~/dotfiles/vim/ultisnips-snippets"

" LaTeX live preview
let g:livepreview_previewer='evince'

let g:move_key_modifier="C"

" rainbow parentheses
"let g:rbpt_colorpairs = [
"    \ ['brown',       'RoyalBlue3'],
"    \ ['Darkblue',    'SeaGreen3'],
"    \ ['darkgray',    'DarkOrchid3'],
"    \ ['darkgreen',   'firebrick3'],
"    \ ['darkcyan',    'RoyalBlue3'],
"    \ ['darkred',     'SeaGreen3'],
"    \ ['darkmagenta', 'DarkOrchid3'],
"    \ ['brown',       'firebrick3'],
"    \ ['gray',        'RoyalBlue3'],
"    \ ['black',       'SeaGreen3'],
"    \ ['darkmagenta', 'DarkOrchid3'],
"    \ ['Darkblue',    'firebrick3'],
"    \ ['darkgreen',   'RoyalBlue3'],
"    \ ['darkcyan',    'SeaGreen3'],
"    \ ['darkred',     'DarkOrchid3'],
"    \ ['red',         'firebrick3'],
"    \ ]
"let g:rbpt_max = 16
"let g:rbpt_loadcmd_toggle = 0
" always enable rbpt
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_start_length=3
call deoplete#custom#option('auto_complete_delay', 300)

let g:ackprg='ag --nogroup --nocolor --column'

let g:neomake_make_maker = {
\ 'exe': 'make',
\ 'args': ['-j8'],
\ 'errorformat': '%f:%l:%c: %m',
\ }

let g:neomake_enabled_makers = ['make']
let g:neomake_open_list = 2

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:vim_json_syntax_conceal = 0

let g:rustfmt_autosave = 1

let g:deoplete#sources#rust#racer_binary='/usr/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/var/local/rust'
let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'

let g:LanguageClient_serverCommands = {
  \ 'cpp': ['clangd'],
  \ 'java': ['jdtls'],
  \ 'rust': ['rls'],
  \ }
