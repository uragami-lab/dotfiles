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

