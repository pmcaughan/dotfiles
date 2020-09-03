
"cm and ch makes a main and header file
nnoremap <leader>cm :-1read ~/.vim/templates/cpp_main_template.cpp<CR>
nnoremap <leader>ch :-1read ~/.vim/templates/cpp_header_template.h<CR>

nnoremap <leader>for i for(int i = 0; i < ; i++){<ESC>6hi
nnoremap <leader>db i cout <<"---DB " << endl;<ESC>10hi

nnoremap <leader>T i template<typename T>

" adds a column at 80 chars so I don't go too wide
set colorcolumn=80

" sets ff to fold a function
nnoremap <leader>ff zfi{
