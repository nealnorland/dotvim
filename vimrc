""""""""""""""""""
" Credits
""""""""""""""""""
" Neal Norland's vimrc file
"
" Inspired by the following sources:
" https://github.com/dougblack/dotfiles
" http://vimcasts.org
" [A] https://github.com/axiaoxin/vim-settings
" [B] https://github.com/colbycheeze/dotfiles
" https://github.com/bryankennedy/vimrc
"
" And many others...

""""""""""""""""""
" Pathogen - manage your runtimepath
""""""""""""""""""

" Download Pathogen, inspired by [A]
if empty(glob('~/.vim/autoload/pathogen.vim'))
    silent !curl -fLo ~/.vim/autoload/pathogen.vim --create-dirs
        \ https://tpo.pe/pathogen.vim
endif
" End of [A]

execute pathogen#infect()
execute pathogen#helptags()

"""""""""""""""""""
" Colors
""""""""""""""""""
syntax enable			                " enable syntax processing

"""""""""""""""""""
" Spaces and Tabs
"""""""""""""""""""
set tabstop=4			                " number of visual spaces per TAB
set softtabstop=4		                " number of spaces per TAB when editing
set shiftwidth=4    		            " number of spaces per TAB when not in insert mode
set expandtab			                " TAB are spaces

"""""""""""""""""""
" UI Configuration 
"""""""""""""""""""
set number		    	                " show line numbers
set numberwidth=5   		            " shift line number spacing by 5

" Toggle relative numbering, and set to absolute on the loss of focus or insert mode from [B]
set rnu
function! ToggleNumbersOn()
    set nu!
    set rnu
endfunction
function! ToggleRelativeOn()
    set rnu!
    set nu
endfunction
autocmd FocusLost * call ToggleRelativeOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleRelativeOn()
autocmd InsertLeave * call ToggleRelativeOn()
" End of [B]

set showcmd			                    " show command in the bottom bar
set ruler                               " show ruler in the bottom bar
set cursorline			                " highlight current line
filetype indent on		                " load filetype-specific indent files
set wildmenu			                " visual autocomplete command menu
set lazyredraw			                " redraw only when necessary
set showmatch			                " highlight matching [{()}]
set complete=.,w,b,u,t,i,kspell
set completeopt=menu,menuone,longest    " complete options (disable preview scratch window)
set pumheight=15    		            " limit popup menu height 

"""""""""""""""""""
" Searching 
"""""""""""""""""""
set incsearch			                " search as the user enters characters
set hlsearch			                " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>    

"""""""""""""""""""
" Folding 
"""""""""""""""""""
set foldenable		    	            " enable folding
set foldlevelstart=10		            " open most folds by default
set foldnestmax=10	    	            " 10-nested fold max

"space open/closes folds
nnoremap <space> za

set foldmethod=indent		            " fold based on indent level

"""""""""""""""""""
" Custom Movements
"""""""""""""""""""
" highlight last inserted text
nnoremap gV `[v`]