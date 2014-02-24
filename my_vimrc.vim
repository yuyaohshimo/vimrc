""""""""""""""""""""""""
" NeoBundle
""""""""""""""""""""""""
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'wavded/vim-stylus'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'tpope/vim-fugitive'

" You can specify revision/branch/tag.

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

""""""""""""""""""""""
" Display Settings
""""""""""""""""""""""

colorscheme solarized
set background=dark
set guifont=Source\ Code\ Pro\ 12

syntax on
set title
set number
set ruler
set hlsearch

set list
set listchars=eol:¬,tab:»\ ,trail:·

" indent
set noautoindent
set nosmartindent
filetype plugin indent off

set noexpandtab
set tabstop=2

"""""""""""""""""""
" Insert Mode$
""""""""""""""""""""
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
