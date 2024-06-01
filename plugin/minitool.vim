" minitool.vim - My Person Minimal Tool Set
" Maintainer:   Jinghui Hu <hujinghui@buaa.edu.cn>
" Version:      0.1

if exists('g:loaded_minitool') || &compatible
  finish
else
  let g:loaded_minitool = 'yes'
endif

function! s:md5sum(file)
  let cmd= 'md5sum ' . a:file 
  silent !clear
  execute '!' . cmd
endfunction

command! -nargs=1 -complete=file Md5 call s:md5sum(<q-args>)


" vim:set et sw=2:
