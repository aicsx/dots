" ax - Vim config
" ax[at]slackware[dot]eu
" https://aicsx.github.io/ax/
syntax on

set t_Co=256                            "ALL the colours!
set ttyfast                             "don't lag…
set cursorline                          "track position
set nocompatible                        "leave the old ways behind…
set encoding=utf-8                      "UTF-8 encoding for all new file
set number                              "show line numbers

"hide/show with line number with <F3>
noremap <F3> :set invnumber<CR>
"hide/show FSdirTree with <F5>
noremap <F5> :NERDTreeToggle<CR>

"Maps Alt-[left,down,up,right] or Alt-[h,j,k,l] to resizing a window split
map <silent> <A-left> <C-w><
map <silent> <A-up> <C-w>-
map <silent> <A-down> <C-w>+
map <silent> <A-right> <C-w>>

"Maps Shift-[s,v] to horizontal and vertical split respectively
map <silent> <S-s> :split<CR>
map <silent> <S-v> :vsplit<CR>

"Maps Ctrl-[n,p] or Ctrl-[right-left] for moving next and previous window respectively
map <silent> <C-right> <C-w><C-w>
map <silent> <C-left> <C-w><S-w>

"Maps Ctrl+Shift+[left,right]
nnoremap <C-S-Left> :tabprevious<CR>
nnoremap <C-S-Right> :tabnext<CR>

set wildmenu                            "enhanced tab-completion shows all matching cmds in a popup menu
set wildmode=list:longest,full          "full completion options
set paste				"include paste command

"set background=dark			"background 
colorscheme monokai-bold		"theme

"transparent background
hi Normal guibg=NONE ctermbg=NONE
"transparent background line number
hi clear LineNr
"transparent background line string
hi clear CursorLine
"transparent line background with orange color select
hi CursorLineNr ctermbg=NONE ctermfg=208

"listchars
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\ 

"status old bar info and appearance
"set statusline=\ \%f%m%r%h%w\ ::\ %y\ [%{&ff}]\%=\ [%p%%:\ %l/%L]\ 
set laststatus=2

au BufRead /tmp/mutt-* set tw=72

"new statusline
set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n\           " buffer number
set statusline+=%#Visual#       " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#     " colour
set statusline+=%R                        " readonly flag
set statusline+=%M                        " modified [+] flag
set statusline+=%#Cursor#               " colour
set statusline+=%#CursorLine#     " colour
set statusline+=\ %t\                   " short file name
set statusline+=%=                          " right align
set statusline+=%#CursorLine#   " colour
set statusline+=\ %Y\                   " file type
set statusline+=%#CursorIM#     " colour
set statusline+=\ %3l:%-2c\         " line + column
set statusline+=%#Cursor#       " colour
set statusline+=\ %3p%%\                " percentage

"lightline plugin statusbar theme
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ } 
"showmode with lightline
set noshowmode
