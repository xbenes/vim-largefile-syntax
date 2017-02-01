# vim-largefile-syntax

Turn off syntax highlighting for large files in vim

## Description
This plugin turns off syntax highlight for a file if one of the following conditions is met
* buffer size exceeds given limit
* there is at least one line in the file which exceeds the limit

## Installation
Using [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'xbenes/vim-largefile-syntax'
```

## Global options
Configure buffer size limit (default 100000)

```vim
let g:largefile_syntax_filesize_limit = 100000
```

Configure line length limit in characters (default 700)

```vim
let g:largefile_syntax_linelength_limit = 700
```
