autocmd! bufwritepost $HOME/.vimrc source $HOME/.vimrc

set number
set relativenumber
set laststatus=2
set expandtab
set tabstop=4
set shiftwidth=4
set hlsearch
set incsearch
set ignorecase
set smartcase
set noswapfile
set background=dark
set colorcolumn=101
set nowrap

match ErrorMsg '\s\+$'

set path+=**

syntax on

filetype plugin indent on

hi Normal       ctermfg=white       ctermbg=none   cterm=bold
hi Keyword      ctermfg=red         ctermbg=none   cterm=bold
hi Special      ctermfg=red         ctermbg=none   cterm=bold
hi Identifier   ctermfg=blue        ctermbg=none   cterm=bold
hi PreProc      ctermfg=blue        ctermbg=none   cterm=bold
hi Type         ctermfg=green       ctermbg=none   cterm=bold
hi Statement    ctermfg=yellow      ctermbg=none   cterm=bold
hi Function     ctermfg=cyan        ctermbg=none   cterm=bold
hi String       ctermfg=magenta     ctermbg=none   cterm=bold
hi Number       ctermfg=magenta     ctermbg=none   cterm=bold
hi Constant     ctermfg=magenta     ctermbg=none   cterm=bold
hi Comment      ctermfg=darkgrey    ctermbg=none   cterm=bold
hi NonText      ctermfg=darkgrey    ctermbg=none   cterm=bold
hi LineNr       ctermfg=darkgrey    ctermbg=none   cterm=bold
hi Todo         ctermfg=white       ctermbg=blue   cterm=bold
hi IncSearch    ctermfg=white       ctermbg=blue   cterm=bold
hi Search       ctermfg=blue        ctermbg=black  cterm=bold
hi StatusLine   ctermfg=blue        ctermbg=black  cterm=bold
hi StatusLineNC ctermfg=blue        ctermbg=black  cterm=bold
hi Folded       ctermfg=blue        ctermbg=black  cterm=bold
hi Visual       ctermfg=blue        ctermbg=black  cterm=bold
hi VertSplit    ctermfg=darkgrey    ctermbg=black  cterm=bold
hi ColorColumn  ctermfg=darkgrey    ctermbg=black  cterm=bold

noremap  <Up>    <Nop>
noremap  <Down>  <Nop>
noremap  <Left>  <Nop>
noremap  <Right> <Nop>
inoremap <Up>    <Nop>
inoremap <Down>  <Nop>
inoremap <Left>  <Nop>
inoremap <Right> <Nop>

noremap  <PageUp>   <Nop>
noremap  <Pagedown> <Nop>
inoremap <PageUp>   <Nop>
inoremap <Pagedown> <Nop>
