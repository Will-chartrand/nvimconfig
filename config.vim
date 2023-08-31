"Tab length
set tabstop=2
set shiftwidth=2
set expandtab

syntax enable


colorscheme sacredforest
" Set background to clear
hi Normal guibg=NONE ctermbg=NONE
let g:airline_theme='onedark'
set rnu
set nu 

set scrolloff=15

set encoding=UTF-8

set completeopt=menuone
set shortmess+=c

" Allow treesitter to collapse
set foldmethod=indent
set foldexpr=nvim_treesitter#foldexpr()

" Keep everything uncollapsed upon opening a file
autocmd BufReadPost,FileReadPost * normal zR

let g:indent_guides_guide_size = 1

" Integrated terminal configuration
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

" Autoclosing tags configs
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.js'

" Flutter/Dart
""lua << EOF
""  require("flutter-tools").setup {} -- use defaults
""EOF

" Coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-flutter',
  \ ]
