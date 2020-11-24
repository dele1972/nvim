" NERD TREE 
"
" 'scrooloose/nerdtree' or 'preservim/nerdtree'?
" https://github.com/preservim/nerdtree
" https://vimawesome.com/plugin/nerdtree-red

" *** Config Section ***
  let g:NERDTreeShowHidden = 1
  let g:NERDTreeMinimalUI = 1
  let g:NERDTreeIgnore = []
  let g:NERDTreeStatusline = ''

  " Automaticaly close nvim if NERDTree is only thing left open
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

  " Toggle
  nnoremap <silent> <C-b> :NERDTreeToggle<CR>
