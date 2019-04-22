autocmd Filetype make setlocal makeprg=/usr/bin/make
autocmd Filetype rust setlocal makeprg=/usr/bin/cargo\ build
autocmd Filetype tex setlocal makeprg=/usr/bin/rubber\ -dq\ %
