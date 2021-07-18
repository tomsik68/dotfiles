
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

let g:move_key_modifier="C"

" always enable rbpt
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('auto_complete_start_length', 3)
call deoplete#custom#option('auto_complete_delay', 500)

if executable('rg')
  let g:ackprg='rg --vimgrep'
endif

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

"let g:deoplete#sources#rust#racer_binary='/usr/bin/racer'
"let g:deoplete#sources#rust#rust_source_path='/var/local/rust'
let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'

call deoplete#custom#source('LanguageClient',
            \ 'min_pattern_length',
            \ 2)

let g:LanguageClient_serverCommands = {
  \ 'c': ['clangd', '--completion-style=detailed', 'std=c++17'],
  \ 'cpp': ['clangd', '--completion-style=detailed'],
  \ 'java': ['jdtls'],
  \ 'rust': ['rust-analyzer'],
  \ }

let g:LanguageClient_diagnosticsDisplay = {
        \ 1: {
        \     "name": "Error",
        \     "texthl": "",
        \     "signText": "✖",
        \     "signTexthl": "LanguageClientErrorSign",
        \     "virtualTexthl": "Error",
        \ },
        \ 2: {
        \     "name": "Warning",
        \     "texthl": "",
        \     "signText": "⚠",
        \     "signTexthl": "LanguageClientWarningSign",
        \     "virtualTexthl": "Todo",
        \ },
        \ 3: {
        \     "name": "Information",
        \     "texthl": "",
        \     "signText": "ℹ",
        \     "signTexthl": "LanguageClientInfoSign",
        \     "virtualTexthl": "Todo",
        \ },
        \ 4: {
        \     "name": "Hint",
        \     "texthl": "",
        \     "signText": "➤",
        \     "signTexthl": "LanguageClientInfoSign",
        \     "virtualTexthl": "Todo",
        \ }}


set scl=no
