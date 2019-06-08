" set rtp^=/usr/share/vim/vimfiles/

let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
let NERDTreeNaturalSort=1
map <C-n> :NERDTreeToggle<CR>

"let mapleader=<\SPACE>
colorscheme gruvbox
set number
set relativenumber
set cursorline
set synmaxcol=200

set list
set linebreak
set breakindent
"set showbreak=\\\\\
let &showbreak='↳ '
set listchars=eol:¬,tab:→\ ,trail:~,extends:>,precedes:<,space:·

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set grepprg=rg

set ignorecase
set infercase
set smartcase

set noshelltemp
set secure
" set noswapfile

set splitright
set splitbelow
set cpoptions+=$

set ttimeout
set ttimeoutlen=100

set scrolloff=5
set mouse=a
" set nrformats-=octal

map <F5> :bp<CR>
map <F6> :bn<CR>
map Q gq

inoremap <C-U> <C-G>u<C-U>
inoremap <C-l> <C-x><C-l>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
nnoremap gj j
nnoremap gk k

" Nuke evil whitespace from orbit (from eli-schwartz)
function StripTrailingWhitespace()
    " Don't remove trailing whitespace for these filetypes
    if &ft =~ 'markdown\|gitsendemail\|json'
        return
    endif
    let save_cursor = getpos(".")
    " Match and remove blank lines at EOF
    :silent! %s#\($\n\s*\)\+\%$##
    " Match and remove whitespace at EOL
    :silent! %s#\s\+$##
    call setpos('.', save_cursor)
endfunction

autocmd BufWritePre * call StripTrailingWhitespace()
" Put these in an autocmd group, so that you can revert them with:
" ":augroup vimStartup | au! | augroup END"
augroup vimStartup
  au!
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
    \ |   exe "normal! g`\""
    \ | endif
augroup END

"augroup autoSaveAndRead
"    autocmd!
"    autocmd TextChanged,InsertLeave,FocusLost * silent! wall
"    autocmd CursorHold * silent! checktime
"augroup END

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
          \ | wincmd p | diffthis
endif

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
