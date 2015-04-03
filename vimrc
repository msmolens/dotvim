"Load pathogen
execute pathogen#infect()

set nocompatible
"filetype off

"Color scheme
set background=dark
if has("gui_running")
	colorscheme zenburn
	let g:zenburn_old_Visual = 1
	let g:zenburn_alternate_Visual = 1

	set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h11'

endif

"allow hiding buffers
set hidden

"command abbreviations
:command W w

"vim-airline
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme = 'airlineish'
"let g:airline_theme = 'zenburn'
let g:airline_theme = 'kolor'
let g:airline_powerline_fonts = 1

"commentary
let g:commentary_map_backslash = 0

"ctrlp
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'
map <C-B> :CtrlPBuffer<CR>
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$|node_modules|bower_components|coverage',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Switch buffers
map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprevious<cr>

"Easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
"nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" Motions
"map <Leader>w <Plug>(easymotion-w)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

"netrw
let g:netrw_altfile = 1

" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
"nnoremap <Leader>b :bp<CR>
"nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>