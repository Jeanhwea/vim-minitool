" minitool.vim - My Person Minimal Tool Set
" Maintainer:   Jinghui Hu <hujinghui@buaa.edu.cn>
" Version:      0.1
"
" Cheatsheet for vimscript: https://devhints.io/vimscript
"
if exists('g:loaded_minitool') || &compatible
  finish
else
  let g:loaded_minitool = 'yes'
endif

function! s:md5sum(file)
  let cmd= 'md5sum ' . a:file 
  silent! clear
  execute '!' . cmd
endfunction

command! -nargs=1 -complete=file Md5 call s:md5sum(<q-args>)


function! s:browse_recent_files()
  " ignore some pattern 
  call filter(v:oldfiles, 'v:val !~# "fugitive:///.*"')
  call filter(v:oldfiles, 'v:val !~# "/usr/.*"')
  call filter(v:oldfiles, 'v:val !~# "/private/.*"')
  execute 'browse oldfiles'
endfunction

command! -nargs=0 Moldfiles call s:browse_recent_files()

" vim:set et sw=2:
