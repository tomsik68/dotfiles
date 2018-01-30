" restore cursor position in files
if has("autocmd")
        filetype plugin indent on
        autocmd BufReadPost *
                                \ if line("'\"") > 1 && line("'\"") <= line("$") |
                                \   exe "normal! g`\"" |
                                \ endif
endif

" execure project-specific vim files, but securely
set exrc secure

" enable modelines
set modeline

" get rid of swp and backup files
set nobackup
set noswapfile
set nowritebackup

set path+=**
set wildmenu

" sane line joins on comments
if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j
endif
