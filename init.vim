set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=2               " number of columns occupied by a tab character
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=100                   " set an 80 column border for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting

set encoding=UTF-8          " https://github.com/ryanoasis/vim-devicons
"setup vim-plug {{{

  "Note: install vim-plug if not present
  if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
  endif

  "Note: Skip initialization for vim-tiny or vim-small.
  if !1 | finish | endif
  if has('vim_starting')
    set nocompatible               " Be iMproved
    " Required:
    call plug#begin()
  endif

"}}}
  call plug#begin('~/.config/nvim/autoload/plugged')

    source ~/.config/nvim/vim-plug/theme-dracula.vim

    source ~/.config/nvim/vim-plug/nerdtree.vim
    source ~/.config/nvim/vim-plug/vim-devicons.vim

    source ~/.config/nvim/vim-plug/fzf.vim

  call plug#end()

" configs for themes
source ~/.config/nvim/vim-config/theme-dracula.vim

" configs for installed plugins
source ~/.config/nvim/vim-config/nerdtree.vim
source ~/.config/nvim/vim-config/fzf.vim

" other configs
source ~/.config/nvim/vim-config/setup-xclip.vim
