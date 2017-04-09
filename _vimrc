execute pathogen#infect()
set expandtab
set tabstop=4
set shiftwidth=4
function Flake8 ()
    !flake8 %
endfunction
function Pylint ()
    !pylint --report=n %
endfunction
" autocmd BufWritePost *.py call Flake8()
command Check call Flake8()
command Check2 call Pylint()
syntax on
filetype on
au BufNewFile,BufRead *.eliom set filetype=ocaml
set dir=/tmp
