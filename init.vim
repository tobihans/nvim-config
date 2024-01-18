set shortmess+=c

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" Turn on the Wild menu
set wildmenu
" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif

" Colors and Fonts
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" Specify the behavior when switching between buffers 
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry


" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <C-space> ?

" Disable highlight when <leader><cr> is pressed
nnoremap <silent> <leader><cr> :noh<cr>

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Remap VIM 0 to first non-blank character
map 0 ^

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Edit my config
nnoremap <M-s> :call OpenSettings()<cr>
function! OpenSettings()
    " TODO: Open a new tab if there is already a file open
    " or open a new tab instead
    if has("unix")
        execute "edit ~/.config/nvim/lua/user/init.lua"
        execute "cd ~/.config/nvim/lua/user/"
    elseif has("win32")
        execute "edit ~\\AppData\\Local\\nvim\\lua\\user\\init.lua"
        execute "cd ~\\AppData\\Local\\nvim\\lua\\user"
    endif
endfunction
