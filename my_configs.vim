" Don't show -- INSERT -- at bottom
set noshowmode
" Set no compatible because I don't use vi
set nocompatible

set number
set relativenumber
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

let g:tmpl_author_email = 'mjrerle@gmail.com'
let g:tmpl_author_name = 'Matt Erle'
" set evince as pdf wiever
let g:livepreview_previewer = 'evince'
let g:livepreview_engine = 'xelatex'
" Set colorscheme from lightline
let g:lightline = {
            \ 'colorscheme': 'solarized',
            \ }
" Set terminal colors
if !has('gui_running')
    set t_Co=256
endif

inoremap <Space><Space> <Esc>/<++><cr>4xi
nnoremap <Space><Space> /<++><cr>4xi

inoremap <Space><Tab> <Esc>?<++><cr>4xi
nnoremap <Space><Tab> ?<++><cr>4xi

inoremap () ()<Esc>F(a
inoremap [] []<Esc>F[a
inoremap {} {<cr>}<Esc>k0f{A<cr>
inoremap {<cr> {<cr>}<Esc>k0f{A<cr>
inoremap '' ''<Esc>F'a
inoremap "" ""<Esc>F"a
inoremap <> <><Esc>F<a

inoremap ()<Tab> ()
inoremap []<Tab> []
inoremap {}<Tab> {}
inoremap ''<Tab> ''
inoremap ""<Tab> ""
inoremap <><Tab> <>

inoremap <leader>Z <++>
nnoremap <leader>Z i<++><Esc> 
nnoremap <leader>ai 0ggvG$=

nnoremap <leader>e :e /home/chuck/Workspace/


" Quit
nmap <leader>q :q<cr>
" Save and Quit
nmap <leader>x :x<cr>
" Open my configs file!
nmap <leader>ve :e ~/.vim_runtime/my_configs.vim<cr>
" Open bashrc
nmap <leader>vr :e ~/.bashrc<cr>
" Open bash_aliases
nmap <leader>va :e ~/.bash_aliases<cr>
" not currently working
vnoremap <C-c> :"*y<cr>
inoremap <C-v> <ESC>:r !xsel -p<cr>i
nnoremap <C-v> :r !xsel -p<cr>

inoremap <leader>s <Esc>yiw:%s/<C-r>"/
nnoremap <leader>s yiw:%s/<C-r>"/

" Launch latex previewer
autocmd BufNewFile,BufRead *.tex nmap <leader>ll :LLPStartPreview<cr>

" Go binds
autocmd BufNewFile,BufRead *.go nmap <leader>gi :GoImports<cr>

" C binds
autocmd BufNewFile,BufRead *.c inoremap ,, <++> <++>(<++>){<cr><Space><++><cr>}<Esc>3kI
autocmd BufNewFile,BufRead *.c nnoremap ,, i<++> <++>(<++>){<cr><Space><++><cr>}<Esc>3k
autocmd BufNewFile,BufRead *.c inoremap if( if(<++>){<cr><Space><++><cr>}<Esc>3kI
