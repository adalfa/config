filetype plugin on
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd FileType markdown inoremap ;1 #<space>
autocmd FileType markdown inoremap ;2 ##<space>
autocmd FileType markdown inoremap ;3 ###<space>
autocmd FileType markdown inoremap ;4 ####<space>
autocmd FileType markdown inoremap ;b **<space>**<Esc>2hxi
autocmd FileType markdown inoremap ;i *<space>*<Esc>hxi
autocmd FileType markdown inoremap ;q <Enter><Enter>><space>
autocmd FileType markdown inoremap ;c <Enter>`<space>`<Esc>hxi
autocmd FileType markdown inoremap ;l <Enter>+<space>
