" .rmd note header
au BufNewFile *note.rmd r ~/.vim/templates/note_template.rmd

" laplace transform easy
nnoremap <leader>lap a\mathcal{L}\{\}<ESC>hi
