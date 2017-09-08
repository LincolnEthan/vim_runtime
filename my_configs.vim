" nmap <leader>p <Plug>yankstack_substitute_older_paste
" nmap <leader>P <Plug>yankstack_substitute_newer_paste
" let g:jedi#goto_command = "<leader>d"
" let g:jedi#goto_assignments_command = "<leader>g"
" let g:jedi#goto_definitions_command = ""
" let g:jedi#documentation_command = "K"
" let g:jedi#usages_command = "<leader>n"
" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#rename_command = "<leader>r"

" for ycm
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F4> :YcmDiags<CR>
let g:ycm_python_binary_path = 'python'
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']

set background=dark
try
    colorscheme vim-pyte
catch
endtry

set hlsearch
set incsearch
set ignorecase
set smartcase
set showmode
set number
set relativenumber
set scrolloff=3
set autowrite

inoremap jj <Esc>
inoremap jk <Esc>
inoremap kk <Esc>
inoremap <C-h> <Left><Del>
inoremap <BACKSPACE> <Left><Del>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

vnoremap v <Esc>
nnoremap H ^
nnoremap L $
nnoremap U <C-r>
nnoremap Y y$
nnoremap p p=`]<C-o>
nnoremap <Leader>sc :nohlsearch<CR>


map <leader>g :LAck 
map <leader>n :lnext<CR>
map <leader>p :lprevious<CR>
" map <leader>t :GoTest<CR>
" map <leader>b :GoBuild<CR>
let g:gitgutter_enabled= 0
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)

nnoremap <leader>a :lclose<CR>
let g:syntastic_auto_loc_list = 1
let g:go_list_type = "locationlist"


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" let g:acp_enableAtStartup = 0
" " Use neocomplete.
" let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
" let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 3

set completeopt-=preview
call expand_region#custom_text_objects({
      \ "\/\\n\\n\<CR>": 1, 
      \ 'a]' :1, 
      \ 'ab' :1, 
      \ 'aB' :1, 
      \ 'ii' :0, 
      \ 'ai' :0, 
      \})

