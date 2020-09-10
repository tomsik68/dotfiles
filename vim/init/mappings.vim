let mapleader=';'

" vertical & horizontal split nmap <leader>/ :vsp.<CR>
nnoremap <leader>- :sp.<CR>
nnoremap <leader>w <C-w>w
" fuzzy find file quickly
nnoremap <leader>f :FuzzyOpen<CR>
nnoremap <leader>g :FuzzyGrep<CR>
" delete buffer without closing vim
nnoremap <leader>q :Bdelete<cr>
" save file quickly
nnoremap <leader><leader> :w<cr>
" ...even without right permissions...
nnoremap <leader>s :w !sudo tee %<cr>
" fix empty lines and trailing whitespaces
nnoremap <leader>x my:%s/^\s\+$//ge<cr>:%s/\s\+$//ge<cr>'y
" run maker for current directory
nnoremap <leader>m :make<cr>
" next/previous (compilation) error
nnoremap <leader>n :cnext<cr>
nnoremap <leader>N :cprev<cr>
" CLang format
nnoremap <leader>c :ClangFormat<cr>

" Tabular alignment
nnoremap <leader>a= :Tab /=<cr>
nnoremap <leader>a: :Tab /:<cr>

" clear search pattern
nnoremap <leader>\ :let @/=""<cr>

" show syntax stack
nnoremap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if exists("*synstack")
        echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
    endif
endfunc

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>

nnoremap gy :call LanguageClient_textDocument_hover()<CR>
