let dein_plugins_dir = expand('~/.vim/')

"" Required:
set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand(dein_plugins_dir))
call dein#add(expand('~/.local/share/dein/repos/github.com/Shougo/dein.vim'))
call dein#add('Shougo/deoplete.nvim')
"call dein#add('sebastianmarkow/deoplete-rust')
call dein#add('SirVer/ultisnips')
call dein#add('honza/vim-snippets')
call dein#add('tpope/vim-fugitive')
call dein#add('rhysd/vim-clang-format')
call dein#add('godlygeek/tabular')
call dein#add('rust-lang/rust.vim')
call dein#add('tomsik68/vim-crystallite')
call dein#add('tpope/vim-commentary')
call dein#add('rstacruz/sparkup', {'rtp': 'vim'})
call dein#add('kien/rainbow_parentheses.vim')
call dein#add('editorconfig/editorconfig-vim')
call dein#add('mileszs/ack.vim')
call dein#add('cloudhead/neovim-fuzzy')
call dein#add('mechatroner/rainbow_csv')
call dein#add('moll/vim-bbye')
call dein#add('Superbil/llvm.vim')
call dein#add('uarun/vim-protobuf')
call dein#add('vim-ruby/vim-ruby')
call dein#add('fatih/vim-go')
call dein#add('autozimu/LanguageClient-neovim', {
    \ 'rev': 'next',
    \ 'build': 'bash install.sh',
    \ })
call dein#add('AndrewRadev/splitjoin.vim')
call dein#add('elzr/vim-json')
call dein#add('rhysd/committia.vim')
call dein#add('AndrewRadev/linediff.vim')
call dein#add('wlangstroth/vim-racket')
call dein#add('octol/vim-cpp-enhanced-highlight')
call dein#add('dag/vim-fish')
call dein#add('FStarLang/VimFStar')
call dein#add('bohlender/vim-smt2')
call dein#add('christoomey/vim-tmux-navigator')
call dein#end()
call dein#save_state()

if dein#check_install()
    call dein#install()
endif

" deoplete trying to be special
let g:deoplete#enable_at_startup = 1
