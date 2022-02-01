au BufEnter,BufRead,BufNewFile *.ll set ft=llvm
au BufEnter,BufRead,BufNewFile *.i set ft=c
au BufRead,BufEnter,BufNewFile *.cl set ft=cl
au FileType c,cpp,java setlocal sts=4 ts=4 sw=4
au FileType go setlocal noexpandtab ts=8 sw=8
au FileType make setlocal noexpandtab ts=8 sw=8
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp,*.hh,*.cc set omnifunc=omni#cpp#complete#Main
