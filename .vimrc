execute pathogen#infect()

syntax on
filetype plugin indent on

set expandtab
set tabstop=2
set shiftwidth=2
set laststatus=2
set number

" rust-fmt
let g:rustfmt_autosave = 1

" vim-Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='simple'
let g:airline_left_sep=''
let g:airline_right_sep=''

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  " bind K to grep word under cursor
  nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

  " bind \ (backward slash) to grep shortcut
  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
  
  " bind \ to ag
  nnoremap \ :Ag<SPACE>
endif
