set nocompatible              " be iMproved, required
filetype off                  " required

set notimeout " don't timeout on mappings :set ttimeout " do timeout on terminal key codes :set timeoutlen=100 " timeout after 100 msec 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'mileszs/ack.vim'
" Shows the git diff in the gutter
Plugin 'mhinz/vim-signify'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'derekwyatt/vim-scala'
set runtimepath^=~/.vim/bundle/ctrlp.vim
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

set number
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set hlsearch
set fdm=marker
set mouse=a
set colorcolumn=80
set splitbelow
set splitright

syntax on
filetype plugin indent on

au BufNewFile,BufRead *.c map <F9> : ! gcc % -o %< -g -std=c99 -lm -Wall -Wextra -Wconversion && size %< <CR>
au BufNewFile,BufRead *.cpp map <F9> : ! g++ % -o %< -g -Wall -Wextra -Wconversion && size %< <CR>
au BufNewFile,BufRead *.cc map <F9> : ! g++ % -o %< -g -Wall -Wextra -Wconversion && size %< <CR>
au BufNewFile,BufRead *.rkt map <F9> : ! racket % <CR>
au BufNewFile,BufRead *.py map <F9> : ! python % <CR>
au BufNewFile,BufRead *.rb map <F9> : ! ruby % <CR>
au BufNewFile,BufRead *.m map <F9> : ! octave % <CR>
au BufNewFile,BufRead *.tex map <F9> : ! pdflatex % <CR>
au BufNewFile,BufRead *.java map <F9> : ! javac % && java %< <CR>

au BufNewFile,BufRead *.py map <F8> : ! python % <CR>
au BufNewFile,BufRead *.cc map <F8> : ! g++ -c % -g -Wall -Wextra -Wconversion && ./%< <CR>
au BufNewFile,BufRead *.cpp map <F8> : ! g++ -c % -g -Wall -Wextra -Wconversion && ./%< <CR>

map <F5> : ! lldb %< <CR>
map <F6> : NERDTreeToggle <CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

colorscheme Tomorrow-Night

execute pathogen#infect()

au VimEnter *  NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd Filetype java setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype r setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd Filetype matlab setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

"" Folding
set foldmethod=syntax
