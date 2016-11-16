execute pathogen#infect()

"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif
"
" Required:
set runtimepath+=/Users/jcasas/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/jcasas/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle "frigoeu/psc-ide-vim"

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

syntax on
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


hi SyntasticErrorSign ctermbg=none ctermfg=DarkRed guibg=NONE guifg=red
hi SyntasticWarningSign ctermbg=none ctermfg=DarkMagenta guibg=NONE guifg=yellow
hi SyntasticStyleErrorSign ctermbg=none ctermfg=DarkCyan guibg=NONE guifg=Cyan

" Syntastic
let g:syntastic_aggregate_errors = 1
let g:syntastic_auto_jump = 0 "2
let g:syntastic_error_symbol = '•'
let g:syntastic_style_error_symbol = '•'
let g:syntastic_style_warning_symbol = '•'
let g:syntastic_warning_symbol = '•'
let g:syntastic_auto_loc_list = 2
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_haskell_checkers = ['hdevtools', 'hlint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes':['haskell', 'purescript', 'javascript'], 'passive_filetypes': [] }

" Purescript
let g:purescript_indent_if = 0
let g:purescript_indent_case = 0
let g:purescript_indent_let = 0
let g:purescript_indent_where = 0
let g:purescript_indent_do = 0

let g:psc_ide_syntastic_mode = 1

set ruler
set directory=~/.vimswap,/var/tmp,/tmp
