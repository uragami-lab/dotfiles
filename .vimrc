" 基本設定
" ファイルの読み込み
:set fileencodings=utf-8,cp932,euc-jp,sjis
"すべての数を10進数として扱う
set nrformats=
" netrwプラグイン設定
set nocompatible
filetype plugin on

" 表示関係
" シンタックス設定
syntax enable
colorscheme monokai
" 行番号を表示
set number

" 検索関係
" 検索語をハイライト表示
set hlsearch
" 検索時に大文字小文字を区別しない
set ignorecase
" 検索時に大文字が入力された場合のみ大文字と小文字を区別する
set smartcase

" キーマッピング関係
" コマンドラインモードの履歴呼び出し
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
" バッファリストの切り替え
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" アクティブなファイルが含まれているディレクトリを%%で展開する
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" 画面をクリアして再描画する際に、合わせて、ハイライトを無効化する
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" OS別の設定
if has("mac")
    " mac用の設定
    set backupdir=/tmp
    set viminfo+=n/tmp/viminfo.txt
    set undodir=/tmp
elseif has("unix")
    " unix固有の設定
elseif has("win64")
    " 64bit_windows固有の設定
    set backupdir=%TEMP%
    set viminfo+=n%TEMP%\viminfo.txt
    set undodir=%TEMP%
elseif has("win32unix")
    " Cygwin固有の設定
elseif has("win32")
    " 32bit_windows固有の設定
    set backupdir=%TEMP%
    set viminfo+=n%TEMP%\viminfo.txt
    set undodir=%TEMP%
endif
