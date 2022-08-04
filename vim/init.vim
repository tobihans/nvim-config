set foldnestmax=10
set foldmethod=syntax
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
nnoremap <S-t> :tabnew<CR>

" Tab navigation
nnoremap <leader>1 :tabN 1
nnoremap <leader>2 :tabN 2
nnoremap <leader>3 :tabN 3
nnoremap <leader>4 :tabN 4
nnoremap <leader>5 :tabN 5
nnoremap <leader>6 :tabN 6
nnoremap <leader>7 :tabN 7
nnoremap <leader>8 :tabN 8
nnoremap <leader>9 :tabN 9
nnoremap <leader>0 :tablast<cr>

" Events
augroup mygroup
  autocmd!
  autocmd FileType python,yaml,html setl foldmethod=indent
  autocmd FileType c setl noexpandtab
augroup end

" Commands
command! -nargs=0 RETAB
