let dein_plugins_dir = expand('~/.vim/')

"" Required:
set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand(dein_plugins_dir))
call dein#add(expand('~/.local/share/dein/repos/github.com/Shougo/dein.vim'))
if has('nvim')
    call dein#add('Shougo/deoplete.nvim')
else
    call dein#add('Shougo/neocomplete.vim')
endif

call dein#add('vim-scripts/marvim')
call dein#add('neomake/neomake')
call dein#add('SirVer/ultisnips')
call dein#add('honza/vim-snippets')
call dein#add('tpope/vim-fugitive')
call dein#add('rhysd/vim-clang-format')
call dein#add('benmills/vimux')
call dein#add('osyo-manga/vim-marching')
call dein#add('xuhdev/vim-latex-live-preview')
call dein#add('artur-shaik/vim-javacomplete2')
"call dein#add('airblade/vim-rooter')
call dein#add('octol/vim-cpp-enhanced-highlight')
call dein#add('abudden/taghighlight-automirror')
call dein#add('godlygeek/tabular')
call dein#add('sjl/gundo.vim')
call dein#add('rust-lang/rust.vim')
call dein#add('brookhong/cscope.vim')
call dein#add('udalov/kotlin-vim')
call dein#add('tomsik68/vim-crystallite')
call dein#add('tpope/vim-commentary')
call dein#add('matze/vim-move')
call dein#add('justinmk/vim-sneak')
call dein#add('rstacruz/sparkup', {'rtp': 'vim'})
call dein#add('kien/rainbow_parentheses.vim')
call dein#add('editorconfig/editorconfig-vim')
call dein#add('leafgarland/typescript-vim')
call dein#add('mileszs/ack.vim')
call dein#add('tpope/vim-surround')
call dein#add('cloudhead/neovim-fuzzy')
call dein#add('jsfaint/gen_tags.vim')
call dein#add('junegunn/gv.vim')
call dein#add('joereynolds/place.vim')
call dein#add('mechatroner/rainbow_csv')
call dein#add('moll/vim-bbye')
call dein#add('rust-lang/rust.vim')
call dein#end()
call dein#save_state()

if dein#check_install()
    call dein#install()
endif

" deoplete trying to be special
if has('nvim')
    call deoplete#enable()
endif
