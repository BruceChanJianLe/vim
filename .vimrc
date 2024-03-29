syntax on

" enter the current millenium
se nocompatible

se noerrorbells
se tabstop=4 softtabstop=4
se shiftwidth=4
se expandtab " turns tab into spaces
"se nosmartindent
se nowrap
se noswapfile
se nobackup
se undodir=~/.vim/undodir
se undofile
se incsearch

se colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

se nu " set line number
se history=1000 " set history line to 100
se hls " hightlight search
se rnu " set relative number for better editing experience

let mapleader = "\<Space>" " Set /space as the leader key

" Search and Replace
nnoremap <Leader>r :%s///gc<Left><Left><Left>

" Set syntax
nnoremap <Leader>s :se syn=

" Save all file
nnoremap <Leader>w :wa<CR>

"Save and quit
nnoremap <Leader>x :x<CR>

"Before edit
nnoremap <Leader>e :e!<CR>

"Quit / Quit!
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>

" Toogle paste format
function! TogglePaste()
  if (&paste == 1)
    se nopaste | echo "Toggle paste format OFF"
  else
    se paste | echo "Toggle paste format ON"
  endif
endfunction

nnoremap <Leader>p :call TogglePaste()<CR>

" Toggle line numbers
function! ToggleNumber()
  if (&relativenumber == 1)
    se nonu | se nornu | echo "Toggle line numbers OFF"
  else
    se nu | se rnu | echo "Toggle line numbers ON"
  endif
endfunction

nnoremap <Leader>n :call ToggleNumber()<CR>

" Toogle text wrap
function! ToogleTextWrap()
  if (&wrap == 1)
    se nowrap | echo "Toggle text wrap OFF"
  else
    se wrap | echo "Toggle text warp ON"
  endif
endfunction

nnoremap <Leader><Leader>z :call ToogleTextWrap()<CR>

" Toggle highlight search
function! ToggleHighlight()
  if (&hls == 1)
    se nohls | echo "Toggle highlight search OFF"
  else
    se hls | echo "Toggle hightlight search ON"
  endif
endfunction
"crashed with between vim panes command
nnoremap <Leader><leader>h :call ToggleHighlight()<CR>

" Between vim panes
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Toggle undo-tree
nnoremap <leader>u :UndotreeShow<CR>

" Visual Drag Keys
vmap  <expr>  <S-LEFT>   DVB_Drag('left')
vmap  <expr>  <S-RIGHT>  DVB_Drag('right')
vmap  <expr>  <S-DOWN>   DVB_Drag('down')
vmap  <expr>  <S-UP>     DVB_Drag('up')
vmap  <expr>  D          DVB_Duplicate()
" Remove any introduced trailing whitespace after moving
let g:DVB_TrimWS = 1

call plug#begin('~/.vim/plugged')

" Git Function
Plug 'tpope/vim-fugitive'

" Fuzzy Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" CPP Highlighting
Plug 'octol/vim-cpp-enhanced-highlight'

" Undo List
Plug 'mbbill/undotree'

" Manpages
Plug 'vim-utils/vim-man'

" w3m (not used)
" Plug 'yuratomo/w3m.vim'

" Visual Drag
Plug 'jondkinney/dragvisuals.vim'

" Surround
Plug 'tpope/vim-surround'

" Code Completion
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
