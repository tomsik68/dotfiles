let mapleader=';'

nmap <leader>d :NERDTreeToggle<CR>
" vertical & horizontal split
nmap <leader>/ :vsp.<CR>
nmap <leader>- :sp.<CR>
nmap <leader>w <C-w>w
" fuzzy find file quickly
nmap <leader>f :find 
" save file quickly
nmap <leader>q :wq<cr>
nmap <leader><leader> :w<cr>
" ...even without right permissions...
nmap <leader>s :w !sudo tee %<cr>
" C/C++: run make
nmap <leader>m :make<cr>
" next/previous (compilation) error
nmap <leader>n :cn<cr>
nmap <leader>N :cp<cr>
" CLang format
nmap <leader>c :ClangFormat<cr>

" Tabular alignment
nmap <leader>a= :Tab /=<cr>
nmap <leader>a: :Tab /:<cr>

" history
nmap <leader>h :GundoToggle<cr>

" show syntax stack
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
        if exists("*synstack")
                echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
        endif
endfunc
