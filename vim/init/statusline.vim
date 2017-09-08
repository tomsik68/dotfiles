" git info
set statusline=%{fugitive#statusline()}\ 
" information about current file
set statusline+=%f\ %h%w%M%R\ %=
" neomake warning counts
set statusline+=%{neomake#statusline#QflistStatus()}
" end of default statusline (with ruler)
set statusline+=%=%(%l/%L,%c%V\ %=\ %P%)
