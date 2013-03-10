set autoindent
set smartindent
set showmatch
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set number
set backspace=2
set hlsearch
syntax on
filetype plugin on
highlight LineNr ctermfg=magenta ctermbg=black

" pathogen
execute pathogen#infect()

" tag completion using ctrl + _
autocmd Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim

" disable arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" remove trailing whitespace on write for some files
autocmd BufWritePre *.js,*.rb,*.as,*.xml,*.html,*.coffee :%s/\s\+$//e

" fuzzy file find key mapping test
map <F1> :FufFile <Enter>

" set current directory to directory of open file
map <F2> :cd %:p:h<Enter>

" for MacVim
:colorscheme murphy 
:set guifont=Menlo:h16

" AS3 syntax highlighting
au BufRead,BufNewFile *.as set filetype=actionscript

" JSON
" first run 'sudo cpan JSON::XS' then \jt in vim to format
map <leader>jt  <Esc>:%!json_xs -f json -t json-pretty<CR>

" Turn off a/v bell
set vb

" SuperTab
let g:SuperTabDefaultCompletionType = "context"
