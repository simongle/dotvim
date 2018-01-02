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

" enable filetype plugins, for NERDCommenter
filetype plugin on

" Better line joins
if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j
endif

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

" Don't jump to first Ack result after query
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" Add space after comment for Nerd Commenter
let g:NERDSpaceDelims = 1
