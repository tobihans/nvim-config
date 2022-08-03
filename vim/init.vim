" Basic options
" ----------------
" set foldmethod=syntax   
set foldnestmax=10
setlocal foldmethod=indent
set nofoldenable
set foldlevel=99
set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=250
set shortmess+=c
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Mappings
" ----------------
" map <silent> <leader><cr> :noh<cr>
nnoremap <S-t> :tabnew<CR>
" nnoremap gt :tabnext<CR>
" nnoremap gT :tabprevious<CR>
" Tab navigation
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 :tablast<cr>

" Events
" ----------------
augroup mygroup
  autocmd!
  autocmd FileType python,yaml,html setl foldmethod=indent
  autocmd FileType c setl noexpandtab
augroup end

" Commands
" ----------------

command! -nargs=0 RETAB
