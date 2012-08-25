"no compatible for vi
set nocompatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
	" In text files, always limit the width of text to 78 characters
	"autocmd BufRead *.txt set tw=78
	" " When editing a file, always jump to the last cursor position
	autocmd BufReadPost *
				\ if line("'\"") > 0 && line ("'\"") <= line("$") |
				\exe "normal g'\"" |
				\endif
 	filetype plugin indent on
endif

set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set incsearch		" Incremental search
set hls			" high light search
set nu			" show line number
set ignorecase		" ignorecase when searching...

colors desert 
set cursorline		" show a line under each line
set wrap

"map <leader> to key ","
let mapleader = ","
map <silent> <leader>ss :source ~/.vimrc<cr>
"Fast editing of .vimrc
map <silent> <leader>ee :e ~/.vimrc<cr>

set path=.		" set the searh path is current path, if wanna add other path, use ','.
set sw=4
set ts=4

"ctags -R src
set ruler

" 获取当前目录
func! GetPWD()
    return substitute(getcwd(), "", "", "g")
endf

" 命令行于状态行
set cmdheight=1 " 设置命令行的高度
set laststatus=2 " 始终显示状态行
set stl=\ [File]\ %F%m%r%h%y[%{&fileformat},%{&fileencoding}]\ %w\ \ [PWD]\ %r%{GetPWD()}%h\ %=\ [Line]%l/%L\ %=\[%P] "设置状态栏的信息

" 设定在任何模式下鼠标都可用
"set mouse=a

" 备份和缓存
set nobackup
set nowb
"set noswapfile

au FileType css setlocal dict+=~/.vim/dict/css.dict
au FileType javascript setlocal dict+=~/.vim/dict/javascript.dict

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
