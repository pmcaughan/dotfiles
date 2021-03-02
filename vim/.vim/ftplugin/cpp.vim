" cm and ch makes a main and header file
nnoremap <leader>cm :-1read ~/.vim/templates/cpp_main_template.cpp<CR>
nnoremap <leader>ch :-1read ~/.vim/templates/cpp_header_template.h<CR>

nnoremap <leader>for ifor(int i = 0; i < ; i++){<ESC>6hi
nnoremap <leader>db icerr <<"---DB " << endl;<ESC>10hi

nnoremap <leader>T itemplate<typename T>

" sets leader ff to fold a function
nnoremap <leader>ff zfi{
