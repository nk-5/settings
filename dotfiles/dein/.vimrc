" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.cache/dein')

" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif


" 設定開始

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  let s:toml      = '~/.dein.toml'
  let s:lazy_toml = '~/.dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif


" 基本設定 {{
  set hlsearch
  set number
  syntax enable

  "インデントとタブ
  let g:indentLine_faster = 1
  nmap <silent><Leader>i :<C-u>IndentLinesToggle<CR>

  set expandtab "タブを空白に変換"
  set tabstop=2 "画面上でタブ文字が占める幅
  set shiftwidth=2 "自動インデントでずれる幅
  set softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
  set autoindent "改行時に前の行のインデントを継続する

  " backspace有効化
  set backspace=indent,eol,start

  "クリップボードにコピーする
  set clipboard=unnamed,autoselect

  "Vimのモード設定"
  set noshowmode
  set laststatus=2
  let g:lightline = {
        \ 'colorscheme': 'wombat',
              \ }


  " colorschemeの設定前に書くこと
  autocmd ColorScheme * highlight LineNr ctermfg=210
  let colorscheme = 'Tomorrow-Night-Bright'
  execute 'colorscheme' colorscheme
  hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c]]]]

" }} 基本設定終了

