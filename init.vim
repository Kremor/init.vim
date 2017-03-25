call plug#begin('~/.local/share/nvim/plugged')

"Plug 'chriskempson/base16-vim'
Plug 'davidhalter/jedi-vim'
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
Plug 'severin-lemaignan/vim-minimap'
Plug 'Shougo/deoplete.nvim', {'do': 'UpdateRemotePlugins'}
Plug 'scrooloose/nerdtree'
Plug 'townk/vim-autoclose'
Plug 'vim-airline/vim-airline'

call plug#end()

let s:sys = system('uname -s | perl -pe "chomp"')

if s:sys == 'Linux'
    let g:python_host_prog = '/usr/bin/python'
    let g:python3_host_prog = '/usr/bin/python3'
elseif s:sys == 'Darwin'
    let g:python_host_prog = '/usr/local/Cellar/python/2.7.13/bin/python'
    let g:python3_host_prog = '/usr/local/Cellar/python3/3.6.1/bin/python3'
endif

let g:jedi#force_py_version = 3

let g:deoplete#enable_at_startup = 1

set hidden
let g:racer_cmd='~/.cargo/bin/racer'

autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set colorcolumn=120
set list
set listchars=eol:~,tab:\|-,space:·
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

