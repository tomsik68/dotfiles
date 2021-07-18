" restore cursor position in files
if has("autocmd")
        filetype plugin on
        filetype indent off
        autocmd BufReadPost *
                                \ if line("'\"") > 1 && line("'\"") <= line("$") |
                                \   exe "normal! g`\"" |
                                \ endif
endif

" automatically change directory to directory of edited file
"set autochdir

" execure project-specific vim files, but securely
set exrc secure

" get rid of swp and backup files
set nobackup
set noswapfile
set nowritebackup

set path+=**
set wildmenu
set browsedir=buffer

"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

" sane line joins on comments
if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j
endif
