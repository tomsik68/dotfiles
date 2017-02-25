let dein_plugins_dir = expand('~/.vim/')
"let dein_install_dir = '/usr/share/vim/runtime/'

if dein#load_state(dein_plugins_dir)
  call dein#begin(dein_plugins_dir)
  "#call dein#add(dein_install_dir)
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('neomake/neomake')
  call dein#add('SirVer/ultisnips')
  call dein#add('honza/vim-snippets')
  call dein#add('tpope/vim-fugitive')
  call dein#add('scrooloose/nerdtree')
  call dein#add('rhysd/vim-clang-format')
  call dein#add('benmills/vimux')
  call dein#add('osyo-manga/vim-marching')
  call dein#add('xuhdev/vim-latex-live-preview')
  call dein#add('artur-shaik/vim-javacomplete2')
  call dein#add('airblade/vim-rooter')
  call dein#add('octol/vim-cpp-enhanced-highlight')
  call dein#add('abudden/taghighlight-automirror')
  call dein#add('godlygeek/tabular')
  call dein#add('sjl/gundo.vim')
  call dein#add('rust-lang/rust.vim')
  call dein#add('brookhong/cscope.vim')
  call dein#add('udalov/kotlin-vim')
  call dein#add('tomsik68/vim-crystallite')
  call dein#end()

  call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif
