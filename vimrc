" execute pathogen#infect()

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'davidhalter/jedi-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'fisadev/dragvisuals.vim'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'scrooloose/nerdcommenter'
Plugin 'python-mode/python-mode'
" Plugin 'godlygeek/tabular'
"Plugin 'vim-scripts/Align'
" Plugin 'Valloric/YouCompleteMe'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

let mapleader = ","
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_exclude_preview=1
let g:sierra_Midnight = 1
" let g:ycm_python_binary_path = '/Users/bob/.virtualenvs/p3/bin/python3'
colorscheme termschool
syntax on
set relativenumber
set number
set expandtab
set tabstop=4
set shiftwidth=4
set ruler
set cmdheight=2
set laststatus=2
" for pep8, Grey15  
" set colorcolumn=80
execute "set colorcolumn=" . join(range(81,335), ',')
:highlight ColorColumn ctermbg=235 
" for IndentLines, dim the indent char
:highlight Conceal ctermfg=240
" let g:indentLine_char = '┆'
" turn off popup for doctring in vim-jedi
autocmd FileType python setlocal completeopt-=preview
let g:jedi#popup_on_dot = 0
"
" dragvisuals
vmap  <expr>  <LEFT>   DVB_Drag('left')                         
vmap  <expr>  <RIGHT>  DVB_Drag('right')                        
vmap  <expr>  <DOWN>   DVB_Drag('down')                         
vmap  <expr>  <UP>     DVB_Drag('up')                           
vmap  <expr>  D        DVB_Duplicate()                          

" Remove any introduced trailing whitespace after moving...    
let g:DVB_TrimWS = 1                                            

" python-mode
let g:pymode_python = 'python3'
let g:pymode_rope = 0

" set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
nnoremap <silent> <F5> :!clear;python %<CR>
" nnoremap <F5> :buffers<CR>:buffer<Space>
set formatprg=par
nnoremap <F2> :set number! relativenumber! \| IndentLinesToggle<CR>
set pastetoggle=<F3>
