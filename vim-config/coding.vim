"                *** COMMENTARY (tpope)
" https://github.com/tpope/vim-commentary
" 
" commands:
" 
"   `gcc` ............... to comment out a line
"   `gc` ................ normal mode: comment out the target of a motion (for example, `gcap` to comment out a paragraph)
"                         visual mode: comment out the selection
"   command-mode
"   :7,17Commentary ..... comment out in the range of line 7 to line 17
"   :g/hello/Commentary   comment each line with the occurance of 'hello'

  " function from https://github.com/ChristianChiarulli/nvim/blob/master/plug-config/vim-commentary.vim
  function! Comment()
    if (mode() == "n" )
      execute "Commentary"
    else    
      execute "'<,'>Commentary"
    endif
   endfunction
  vnoremap <silent> <space>/ :call Comment()

  " @ToDo: create a shell keybinding like [Brodie Robertson](https://youtu.be/6BZ-QL_9qcA)
    " He binds <ctrl> + / to the chars: gc
    " for zsh here is a bind 'how tond': https://stackoverflow.com/a/28938270


"                *** GIT IMPLEMENTATION 
  " config of [ThePrimeagen](https://youtu.be/PO6DxfGPQvw?t=98)
  nmap <leader>gh :diffget //3<CR>
  nmap <leader>gu :diffget //2<CR>
  nmap <leader>gs :G<CR>
  " colorscheme gruvbox
  " set background=dark

