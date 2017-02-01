" turn off syntax highlight for large files and lines which contain long lines
" http://stackoverflow.com/questions/178257/how-to-avoid-syntax-highlighting-for-large-files-in-vim

if exists("g:largefile_syntax_loaded")
  finish
endif

let g:largefile_syntax_loaded = 1

if !exists("g:largefile_syntax_filesize_limit")
    let g:largefile_syntax_filesize_limit = 1000000
endif

if !exists("g:largefile_syntax_linelength_limit")
    let g:largefile_syntax_linelength_limit = 700
endif

autocmd BufWinEnter * if line2byte(line("$") + 1) > g:largefile_syntax_filesize_limit | syntax clear | silent echom "Large file detected, turning off syntax highlight" | endif
autocmd BufWinEnter * for l in range(line('$')) | if strlen(getline(l)) > g:largefile_syntax_linelength_limit | syntax clear | silent echom "Long line detected, turning off syntax highlight" | endif | endfor
