
setlocal expandtab autoindent
setlocal smarttab softtabstop=4 shiftwidth=4 tabstop=4 nopaste
setlocal makeprg=pyflakes\ '%'
setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class  

noremap   <buffer> K      :s,^\(\s*\)[^# \t]\@=,\1# ,e<CR>:nohls<CR>zvj
noremap   <buffer> <C-K>  :s,^\(\s*\)#\s\@!,\1,e<CR>:nohls<CR>zvj
