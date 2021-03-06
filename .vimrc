set autoindent
set smartindent
set showmatch
set expandtab
set number
set backspace=2
set hlsearch

" Tab shit
let tabsize = 2
execute "set tabstop=".tabsize
execute "set shiftwidth=".tabsize
execute "set softtabstop=".tabsize

syntax on
filetype plugin on

" pathogen
execute pathogen#infect()

" CtrlP Find
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode=''

" NERD tree
map <C-n> :NERDTreeTabsToggle<CR>
let NERDTreeShowHidden=1

" Tabs
map <C-t> :tabnew<CR>
map <S-Right> :tabn<CR>
map <S-Left> :tabp<CR>

" tag completion using ctrl + _
autocmd Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim

" remove trailing whitespace on write for some files
autocmd BufWritePre *.js,*.rb,*.as,*.xml,*.html,*.coffee,*.less,*.css,*.scss,*.jade :%s/\s\+$//e

" fuzzy file find key mapping test
map <F1> :FufFile <Enter>

" set current directory to directory of open file
map <F2> :cd %:p:h<Enter>

" for MacVim
:colors jellybeans
:set guifont=Menlo:h16
highlight Normal ctermbg=None
highlight LineNr ctermbg=black
highlight NonText ctermbg=black
highlight Normal guibg=black
highlight LineNr guibg=black
highlight NonText guibg=black
highlight FoldColumn ctermbg=black

" Syntax highlighting
au BufRead,BufNewFile *.as set filetype=actionscript
au BufRead,BufNewFile *.less set filetype=less
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif 

" JSON
" first run 'sudo cpan JSON::XS' then \jt in vim to format
map <leader>jt  <Esc>:%!json_xs -f json -t json-pretty<CR>

" Paste Toggle
map <leader>p :set paste!<CR>

" Turn off a/v bell
set vb

" SuperTab
let g:SuperTabDefaultCompletionType = "context"

" Fold Toggle
map <leader>f :set foldcolumn=1<CR>

" Folding
set foldmethod=indent
set foldcolumn=0
set foldlevel=99

" Mouse
set mouse=a
