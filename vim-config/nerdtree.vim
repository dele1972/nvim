" NERD TREE 
"
" 'scrooloose/nerdtree' or 'preservim/nerdtree'?
" https://github.com/preservim/nerdtree
" https://vimawesome.com/plugin/nerdtree-red

" *** Config Section ***
  let g:NERDTreeShowHidden = 1
  let g:NERDTreeMinimalUI = 1
  let g:NERDTreeIgnore = ['\.git$','^node_modules$']
  let g:NERDTreeStatusline = ''

  " Automaticaly close nvim if NERDTree is only thing left open
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

  " Toggle
  nnoremap <silent> <C-b> :NERDTreeToggle<CR>

  " nerdtree-git-plugin (https://github.com/Xuyuanp/nerdtree-git-plugin)
    let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
