au BufEnter,BufRead,BufNewFile *.ll set ft=llvm
au BufEnter,BufRead,BufNewFile *.i set ft=c
au BufRead,BufEnter,BufNewFile *.cl set ft=cl
au FileType c,cpp,java setlocal sts=4 ts=4 sw=4
au FileType go setlocal noexpandtab ts=8 sw=8
au FileType make setlocal noexpandtab ts=8 sw=8
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp,*.hh,*.cc set omnifunc=omni#cpp#complete#Main

function LC_maps()
  if has_key(g:LanguageClient_serverCommands, &filetype)
    nnoremap <buffer> <silent> K :call LanguageClient#textDocument_hover()<cr>
    nnoremap <buffer> <silent> gd :call LanguageClient#textDocument_definition()<CR>
    nnoremap <buffer> <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
    nnoremap <buffer> <silent> gr :call LanguageClient#textDocument_references()<CR>
  endif
endfunction

autocmd FileType * call LC_maps()
