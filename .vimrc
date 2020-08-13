se nu " set line number
se history=1000 " set history line to 100
se hls " hightlight search
se rnu " set relative number for better editing experience

let mapleader = "\<Space>" " Set /space as the leader key

" Search and Replace
nnoremap <Leader>r :%s///gc<Left><Left><Left>

" Save all file
nnoremap <Leader>w :wa<CR>

"Save and quit
nnoremap <Leader>x :x<CR>

"Before edit
nnoremap <Leader>e :e!<CR>

" Toggle line numbers
function! ToggleNumber()
  if (&relativenumber == 1)
    se nonu | se nornu | echo "Toggle line numbers OFF"
  else
    se nu | se rnu | echo "Toggle line numbers ON"
  endif
endfunction

nnoremap <Leader>n :call ToggleNumber()<CR>

" Toggle highlight search
function! ToggleHighlight()
  if (&hls == 1)
    se nohls | echo "Toggle highlight search OFF"
  else
    se hls | echo "Toggle hightlight search ON"
  endif
endfunction

nnoremap <Leader>h :call ToggleHighlight()<CR>

