
" Use tabs as spaces, default identation: 2 spaces
set sw=2 ts=2 sts=2

highlight BadWhitespace ctermbg=red guibg=red

au BufNewFile,BufRead *.scss.liquid   set ft=scss
au BufNewFile,BufRead *.css.liquid    set ft=css
au BufNewFile,BufRead *.js.liquid     set ft=javascript

au BufRead,BufNewFile /etc/nginx/*,/etc/nginx/sites-*/* set ft=nginx
au BufNewFile,BufRead *.rb,*.rbw,*.gemspec set filetype=ruby

autocmd BufNewFile,BufRead *.rb,*.rbw,*.gemspec set filetype=ruby
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab

autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType scss setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

"autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
"			\ formatoptions+=croq softtabstop=4 smartindent
"			\ cinwords=if,elif,else,for,while,try,except,finally,def,class,with

" Python, PEP-008
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py,*.pyw set textwidth=139
au BufRead,BufNewFile *.py,*.pyw set tabstop=4
au BufRead,BufNewFile *.py,*.pyw set softtabstop=4
au BufRead,BufNewFile *.py,*.pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set autoindent
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /\s\+$/
au         BufNewFile *.py,*.pyw set fileformat=unix
au BufRead,BufNewFile *.py,*.pyw let b:comment_leader = '#'
