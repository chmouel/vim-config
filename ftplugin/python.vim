
if has('python')
python << EOF
import os
import sys
import vim
for p in sys.path:
    if os.path.isdir(p):
        vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
EOF
    setlocal omnifunc=pythoncomplete#Complete
endif

setlocal expandtab autoindent
setlocal smarttab softtabstop=4 shiftwidth=4 tabstop=4 nopaste
setlocal makeprg=pyflakes\ '%'
setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class  
