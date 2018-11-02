let mapleader=';'

" vertical & horizontal split nmap <leader>/ :vsp.<CR>
nmap <leader>- :sp.<CR>
nmap <leader>w <C-w>w
" fuzzy find file quickly
nmap <leader>f :FuzzyOpen<CR>
nmap <leader>g :FuzzyGrep<CR>
" delete buffer without closing vim
nmap <leader>q :Bdelete<cr>
" save file quickly
nmap <leader><leader> :w<cr>
" ...even without right permissions...
nmap <leader>s :w !sudo tee %<cr>
" fix empty lines and trailing whitespaces
nmap <leader>x my:%s/^\s\+$//ge<cr>:%s/\s\+$//ge<cr>'y
" run maker for current directory
nmap <leader>m :Neomake<cr>
" next/previous (compilation) error
nmap <leader>n :lnext<cr>
nmap <leader>N :lprev<cr>
" CLang format
nmap <leader>c :ClangFormat<cr>

" Tabular alignment
nmap <leader>a= :Tab /=<cr>
nmap <leader>a: :Tab /:<cr>

" clear search pattern
nmap <leader>\ :let @/=""<cr>

" show syntax stack
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if exists("*synstack")
        echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
    endif
endfunc
