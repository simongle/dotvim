call pathogen#infect()
call pathogen#helptags()
syntax on
set background=light
colorscheme solarized 
set number
set tabstop=2
"autocmd vimenter * NERDTree
" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>
" Enable search hilighting
set hlsearch
