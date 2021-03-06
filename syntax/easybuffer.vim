" easybuffer.vim - plugin to quickly switch between buffers
" Maintainer: Dmitry "troydm" Geurkov <d.geurkov@gmail.com>
" Version: 0.1.4
" Description: easybuffer.vim is a simple plugin to quickly
" switch between buffers by just pressing keys 
" Last Change: 13 February, 2013
" License: Vim License (see :help license)
" Website: https://github.com/troydm/easybuffer.vim
"
" See easybuffer.vim for help.  This can be accessed by doing:
" :help easybuffer

if exists("b:current_syntax")
  finish
endif

let s:save_cpo = &cpo
set cpo&vim

syntax match EasyBufferTitle /\%1leasybuffer - / 
syntax match EasyBufferTitle /\%1lpress/ 
syntax match EasyBufferTitle /\%1lor/ 
syntax match EasyBufferTitle /\%1lto select the buffer/ 
syntax match EasyBufferTitle /\%1lto delete/ 
syntax match EasyBufferTitle /\%1lto wipeout buffer/ 
syntax match EasyBufferComment /buffer list/ 
syntax match EasyBufferColumn /<\zsFiletype\ze>/ 
syntax match EasyBufferColumn /<\zsBufName\ze>/ 
syntax match EasyBufferColumn /<\zsKey\ze>/ 
syntax match EasyBufferKey /\l\+/ contained
syntax match EasyBufferFile /[^> ]\+\s\+[^> ]\+$/ contains=EasyBufferFileType,EasyBufferFileName
syntax match EasyBufferFileType /\zs[^\s>]\+\ze\s\+/ contained
syntax match EasyBufferFileName /[ /]\zs[^ />]\+\ze$/ contained

highlight default link EasyBufferTitle   Comment
highlight default link EasyBufferComment Constant
highlight default link EasyBufferColumn  String
highlight default link EasyBufferBufNr   Constant
highlight default link EasyBufferKey     Identifier
highlight default link EasyBufferFileType        Type  
highlight default link EasyBufferFileName        Keyword  
highlight default link EasyBufferDisabled        Comment  

let b:current_syntax = "easybuffer"

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: ts=8 sw=4 sts=4 et foldenable foldmethod=marker foldcolumn=1
