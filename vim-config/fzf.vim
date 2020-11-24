" FZF - FUZZY (FILE) FINDER

" *** Config Section ***
  nnoremap <C-p> :FZF<CR>
  let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-s': 'split',
    \ 'ctrl-v': 'vsplit'
    \}

" @ToDo: https://dev.to/matrixersp/how-to-use-fzf-with-ripgrep-to-selectively-ignore-vcs-files-4e27

" https://stackoverflow.com/questions/61865932/how-to-get-fzf-vim-ignore-node-modules-and-git-folders
" export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'


" https://rietta.com/blog/hide-gitignored-files-fzf-vim/
" fzf file fuzzy search that respects .gitignore
" If in git directory, show only files that are committed, staged, or unstaged
" else use regular :Files
" nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

