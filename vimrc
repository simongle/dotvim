call pathogen#infect()
call pathogen#helptags()
syntax on
set encoding=utf-8
set background=light
colorscheme solarized 
set number
set tabstop=2
set so=7 "set line offset from cursor when at bottom of screen
set hlsearch 
set backspace=indent,eol,start " backspace over everything in insert mode

"ALE Linter settings
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_lint_on_enter = 0

" Enable fzf
set rtp+=/usr/local/opt/fzf

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled = 1
