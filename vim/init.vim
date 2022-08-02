" Basic options
" ----------------
set cursorline
set nu
set splitbelow
set splitright
set foldmethod=syntax   
set foldnestmax=10
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
set expandtab
set shiftwidth=2

" Plugins config
" {{{lightline.vim
" let g:lightline = {}
" let g:lightline.separator = { 'left': "\ue0b8", 'right': "\ue0be" }
" let g:lightline.subseparator = { 'left': "\ue0b9", 'right': "\ue0b9" }
" let g:lightline.tabline_separator = { 'left': "\ue0bc", 'right': "\ue0ba" }
" let g:lightline.tabline_subseparator = { 'left': "\ue0bb", 'right': "\ue0bb" }
" let g:lightline#asyncrun#indicator_none = ''
" let g:lightline#asyncrun#indicator_run = 'Running...'
" if g:vim_lightline_artify == 0
"   let g:lightline.active = {
"         \ 'left': [ [ 'mode', 'paste' ],
"         \           [ 'readonly', 'filename', 'modified', 'fileformat', 'devicons_filetype' ] ],
"         \ 'right': [ [ 'lineinfo' ],
"         \            [ 'linter_errors', 'linter_warnings', 'linter_ok', 'pomodoro' ],
"         \           [ 'asyncrun_status', 'coc_status' ] ]
"         \ }
"   let g:lightline.inactive = {
"         \ 'left': [ [ 'filename' , 'modified', 'fileformat', 'devicons_filetype' ]],
"         \ 'right': [ [ 'lineinfo' ] ]
"         \ }
"   let g:lightline.tabline = {
"         \ 'left': [ [ 'vim_logo', 'tabs' ] ],
"         \ 'right': [ [ 'git_global' ],
"         \ [ 'git_buffer' ] ]
"         \ }
"   let g:lightline.tab = {
"         \ 'active': [ 'tabnum', 'filename', 'modified' ],
"         \ 'inactive': [ 'tabnum', 'filename', 'modified' ] }
" else
"   let g:lightline.active = {
"         \ 'left': [ [ 'artify_mode', 'paste' ],
"         \           [ 'readonly', 'filename', 'modified', 'fileformat', 'devicons_filetype' ] ],
"         \ 'right': [ [ 'artify_lineinfo' ],
"         \            [ 'linter_errors', 'linter_warnings', 'linter_ok', 'pomodoro' ],
"         \           [ 'asyncrun_status', 'coc_status' ] ]
"         \ }
"   let g:lightline.inactive = {
"         \ 'left': [ [ 'filename' , 'modified', 'fileformat', 'devicons_filetype' ]],
"         \ 'right': [ [ 'artify_lineinfo' ] ]
"         \ }
"   let g:lightline.tabline = {
"         \ 'left': [ [ 'vim_logo', 'tabs' ] ],
"         \ 'right': [ [ 'git_global' ],
"         \ [ 'git_buffer' ] ]
"         \ }
"   let g:lightline.tab = {
"         \ 'active': [ 'artify_activetabnum', 'artify_filename', 'modified' ],
"         \ 'inactive': [ 'artify_inactivetabnum', 'filename', 'modified' ] }
" endif
" let g:lightline.tab_component_function = {
"       \ 'artify_activetabnum': 'custom#lightline#artify_active_tabnum',
"       \ 'artify_inactivetabnum': 'custom#lightline#artify_inactive_tabnum',
"       \ 'artify_filename': 'custom#lightline#artify_tabname',
"       \ 'tabnum': 'custom#lightline#tabnum',
"       \ 'filename': 'lightline#tab#filename',
"       \ 'modified': 'lightline#tab#modified',
"       \ 'readonly': 'lightline#tab#readonly'
"       \ }
" let g:lightline.component = {
"       \ 'git_buffer' : '%{get(b:, "coc_git_status", "")}',
"       \ 'git_global' : '%{custom#lightline#git_global()}',
"       \ 'artify_mode': '%{custom#lightline#artify_mode()}',
"       \ 'artify_lineinfo': "%2{custom#lightline#artify_line_percent()}\uf295 %3{custom#lightline#artify_line_num()}:%-2{custom#lightline#artify_column_num()}",
"       \ 'vim_logo': "\ue7c5",
"       \ 'pomodoro': '%{custom#lightline#pomodoro()}',
"       \ 'mode': '%{lightline#mode()}',
"       \ 'filename': '%t',
"       \ 'fileformat': '%{&fenc!=#""?&fenc:&enc}[%{&ff}]',
"       \ 'modified': '%M',
"       \ 'paste': '%{&paste?"PASTE":""}',
"       \ 'readonly': '%R',
"       \ 'lineinfo': '%2p%% %3l:%-2v'
"       \ }
" let g:lightline.component_function = {
"       \ 'devicons_filetype': 'custom#lightline#devicons',
"       \ 'coc_status': 'custom#lightline#coc_status'
"       \ }
" let g:lightline.component_expand = {
"       \ 'linter_warnings': 'custom#lightline#coc_diagnostic_warning',
"       \ 'linter_errors': 'custom#lightline#coc_diagnostic_error',
"       \ 'linter_ok': 'custom#lightline#coc_diagnostic_ok',
"       \ 'asyncrun_status': 'lightline#asyncrun#status'
"       \ }
" let g:lightline.component_type = {
"       \ 'linter_warnings': 'warning',
"       \ 'linter_errors': 'error'
"       \ }
" " }}}

" Mappings
" ----------------
map <silent> <leader><cr> :noh<cr>
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
