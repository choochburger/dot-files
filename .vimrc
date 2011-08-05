set autoindent
set smartindent
set showmatch
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set number
set backspace=2
syntax on
filetype plugin on
highlight LineNr ctermfg=magenta ctermbg=black

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
autocmd BufWritePre *.js,*.rb,*.as,*.xml,*.html :%s/\s\+$//e

" fuzzy file find key mapping test
map <F1> :FufFile <Enter>

" for MacVim
:colorscheme murphy 
:set guifont=Bitstream\ Vera\ Sans\ Mono:h12
