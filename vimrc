set nocompatible              " 關閉 vim 的舊版相容模式，才能使用新功能
filetype off                  " required

" set the runtime path to include Vundle and initialize
" set rtp+=C:/bundle/Vundle.vim
set rtp+=~/.vim/bundle/vundle

"============ vundle  ===============================
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'prettier/vim-prettier'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
Plugin 'wesleyche/Trinity'
Plugin 'vim-scripts/taglist.vim'
Plugin 'majutsushi/tagbar'
Plugin 'wesleyche/SrcExpl'


" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"============================================

"========== NerdTree才外掛的配置資訊 ==============
"
""將F2設定為開關NERDTree的快捷鍵
 map <f2> :NERDTreeToggle<cr>
""修改樹的顯示圖示
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
""視窗位置
let g:NERDTreeWinPos='left'
""視窗尺寸
let g:NERDTreeSize=30
""視窗是否顯示行號
let g:NERDTreeShowLineNumbers=1
""不顯示隱藏檔案
let g:NERDTreeHidden=0
"====================================================


"========= markdown ============
let g:instant_markdown_slow = 1 "不要即時更新



" 設定主題色
syntax enable
set background=dark
colorscheme desert

set t_Co=256               " 支援 256 色
set title                  " 在 Terminal 標題顯示目前的路徑和檔名
set number                 " 顯示行號
set rnu					   " 顯示相對行號
set scrolloff=3 		   " 表示剩餘3行時開始滾動
set cursorline             " 顯示游標所在的行數
hi CursorLine cterm=NONE ctermbg=234 ctermfg=NONE
set backspace=indent,eol,start " 讓backspace可以在tab $ 開頭等地方作用

" 設定 cursorline 的樣式。
set ruler                  " 在右下角顯示目前的行數、列數
set encoding=utf-8         " 以 UTF-8 顯示
set fileencoding=utf-8     " 以 UTF-8 開啟/儲存檔案
set mouse=a                " 允許用滑鼠操控 vim
set showmatch              " 凸顯對應的括號
set incsearch 			   " 開啟搜尋反饋
set tabstop=4
set softtabstop=4          " 這兩個是設置 tab 寬度為 4，預設的 tab 太寬了
set shiftwidth=4           " 手動縮排的寬度也設為 4
set smartindent            " 開啟自動縮排

set list                   " 這兩個則是設定特殊符號要顯示的字元。 tab、行尾與多餘空白

" 設定選單編碼
let $LANG="zh_TW.UTF-8"
set langmenu=zh_tw.utf-8
set encoding=utf8
"reload menu with UTF-8 encoding
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Syntastic config start
set statusline+=%#warningmsg#
"let statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint'
" Syntastic config end


"====================================================================
" Trinity Settings
"====================================================================

nmap <F7> :TagbarToggle<CR>

" Open and close all the three plugins on the same time
nmap <F8>  :TrinityToggleAll<CR>

" Open and close the Source Explorer separately
nmap <F9>  :TrinityToggleSourceExplorer<CR>

" Open and close the Taglist separately
nmap <F10> :TrinityToggleTagList<CR>

" Open and close the NERD Tree separately
nmap <F11> :TrinityToggleNERDTree<CR>

"============ ctags ==========
let Tlist_Ctags_Cmd="/usr/local/bin/ctags" 




