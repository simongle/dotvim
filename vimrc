call pathogen#infect()
call pathogen#helptags()
syntax on
set encoding=utf-8
set background=light
colorscheme solarized
set number
set tabstop=2
set shiftwidth=2
set so=7 "set line offset from cursor when at bottom of screen
set backspace=indent,eol,start " backspace over everything in insert mode
set autoindent

" Keep visual selection after indenting
vnoremap > >gv
vnoremap < <gv

" Map C-w to tab
nnoremap <tab>   <c-w>w
nnoremap <S-tab> <c-w>W

" Autoclose quotes and brackets/parens
" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O

" incsearch mappings
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" Mappings to only highlight search while searching
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" enable filetype plugins, for NERDCommenter
filetype plugin on

" Better line joins
if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j
endif

"ALE Linter settings
" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)
" let g:ale_lint_on_enter = 0
" let g:ale_lint_on_save = 0
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'

" Enable fzf
set rtp+=/usr/local/opt/fzf

" Mapping for file search with fzf
nnoremap <silent> <C-f> :Files<CR>

" Dont include filename results in Rg
" (https://dev.to/iggredible/how-to-search-faster-in-vim-with-fzf-vim-36ko)
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled = 1

" Don't jump to first Ack result after query
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" Add space after comment for Nerd Commenter
let g:NERDSpaceDelims = 1

" Highlight yanked lines
if !exists('##TextYankPost')
  map y <Plug>(highlightedyank)
endif

" Startify
let g:startify_list_order = ['files', 'dir', 'bookmarks', 'sessions', 'commands']

" Highlight JSDoc
let g:javascript_plugin_jsdoc = 1
let g:jsdoc_enable_es6 = 1
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1

" Code folding
autocmd Syntax py,js,yml foldmethod=syntax
autocmd Syntax py,js,yml normal zR

" Correct indentation for yml files
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Use markdown syntax hilighting for mdx files
autocmd BufNewFile,BufRead *.mdx set syntax=markdown

" Fugitive Conflict Resolution
nnoremap <leader>gd :Gvdiff<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>
