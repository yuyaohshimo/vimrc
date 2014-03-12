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
NeoBundle 'tpope/vim-commentary'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'Simple-Javascript-Indenter'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'rking/ag.vim'

" You can specify revision/branch/tag.

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"""""""""""""""""""""
" General
"""""""""""""""""""""
set directory=~/.vim/tmp
set backspace=start,eol,indent
set clipboard=unnamed

""""""""""""""""""""""
" Display Settings
""""""""""""""""""""""
colorscheme solarized
set background=light
set guifont=Source\ Code\ Pro\ 12

syntax on
set title
set number
set cursorline
set ruler
set hlsearch

set list
set listchars=eol:¬,tab:▸\ ,trail:·
" indent
"set noautoindent
"set nosmartindent
"filetype plugin indent off
set shiftwidth=4

set noexpandtab
set tabstop=4

"""""""""""""""""""
" Key Map
"""""""""""""""""""
noremap <Up> <C-w>k
noremap <Down> <C-w>j 
noremap <Left> <C-w>h
noremap <Right> <C-w>l

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

""""""""""""""""""
"Status Line
"""""""""""""""""
set statusline=%< "行が長すぎるときに切り詰める位置
set statusline+=[%n] "バッファ番号
set statusline+=%m "修正フラグ
set statusline+=%r "読み込み専用フラグ
set statusline+=%h "ヘルプバッファフラグ
set statusline+=%w "プレビューウィンドウフラグ
set statusline+=%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'} "fencとffを表示
set statusline+=%y " バッファ内のファイルのタイプ
set statusline+=\ 
if winwidth(0) >= 130
  set statusline+=%F "バッファ内のファイルのフルパス
else
  set statusline+=%t "ファイル名のみ
endif
set statusline+=%= "左寄せ項目と右寄せ項目の区切り
set statusline+=%{fugitive#statusline()} "Gitのブランチ名を表示
set statusline+=\ \ 
set statusline+=%1l "何行目にカーソルがあるか
set statusline+=/
set statusline+=%L " バッファ内の総行数
set statusline+=,
set statusline+=%c "何列目にカーソルがあるか
set statusline+=%V "画面上の何列目にカーソルがあるか
set statusline+=\ \ 
set statusline+=%P "ファイル内の何％の位置にあるか

set laststatus=2

"""""""""""""""""
" hilight
""""""""""""""""
autocmd ColorScheme * highlight SpecialKey ctermbg=NONE guibg=NONE ctermfg=Grey

""""""""""""""""
" JavaScript
""""""""""""""""

"""""""""""""""""""""""""""""
" Simple javascript indenter
"""""""""""""""""""""""""""""
" shiftwidthを1にしてインデント
let g:SimpleJsIndenter_BriefMode = 1
" switchのインデント調整
let g:SimpleJsIndenter_CaseIndentLevel = -1

"""""""""""""""""""""""""""
" file type
"""""""""""""""""""""""""""
au BufNewFile,BufRead * set noexpandtab tabstop=4 shiftwidth=4
au BufNewFile,BufRead *.jade set expandtab tabstop=2 shiftwidth=2
