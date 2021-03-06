" set nornu
set shell=/bin/bash
set scrolloff=999

let mapleader = ","
let g:spacevim_enable_debug = 0
let g:spacevim_realtime_leader_guide = 1
let g:spacevim_automatic_update = 1
let g:spacevim_enable_powerline_fonts = 1

call SpaceVim#layers#load('incsearch')
call SpaceVim#layers#load('autocomplete')
if has('nvim')
  let g:deoplete#enable_at_startup = 1
end
"set autochdir
"let g:spacevim_filemanager = 'nerdtree'
call SpaceVim#layers#load('lang#go')
" call SpaceVim#layers#load('lang#php')
" call SpaceVim#layers#load('lang#python')
call SpaceVim#layers#load('shell')
call SpaceVim#layers#load('ui')

let g:spacevim_enable_vimfiler_welcome = 1
let g:deoplete#auto_complete_delay = 150
let g:spacevim_enable_tabline_filetype_icon = 1
let g:spacevim_enable_os_fileformat_icon = 1
let g:spacevim_buffer_index_type = 1
let g:neomake_vim_enabled_makers = []
if executable('vimlint')
  call add(g:neomake_vim_enabled_makers, 'vimlint')
endif
if executable('vint')
  call add(g:neomake_vim_enabled_makers, 'vint')
endif

let g:tagbar_width=60
let g:tagbar_autofocus=1
let g:tagbar_sort=0

let g:neomake_html_enabled_makers = []
let g:ctrlp_custom_ignore = {
  \ 'dir': 'node_modules\|.DS_Store\|.git\|.vscode\|bin\|pkg'
  \ }

if has('python3')
  let g:ctrlp_map = ''
  nnoremap <silent> <C-p> :Denite file_rec<CR>
endif
if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

set tabstop=4
let g:spacevim_custom_plugins= [
      \ ['tpope/vim-sensible'],
      \ ['kana/vim-smartword'],
      \ ['vim-scripts/argtextobj.vim'],
      \ ['saihoooooooo/vim-textobj-space'],
      \ ['rhysd/unite-go-import.vim'],
      \]
let g:spacevim_unite_leader = 'r'
let g:spacevim_windows_leader = '<F7>'
let g:spacevim_denite_leader = '<F6>'
let g:spacevim_snippet_engine = 'ultisnips'

call SpaceVim#custom#SPC('nmap', ['c', 'c'], '<plug>NERDCommenterInvert', 'toggle comment lines', 0)
call SpaceVim#custom#SPC('nmap', ['c', 'C'], '<plug>NERDCommenterComment', 'comment lines', 0)
call SpaceVim#custom#SPC('nmap', ['c', 'l'], '<plug>NERDCommenterInvert', 'toggle comment lines', 0)
call SpaceVim#custom#SPC('nmap', ['c', 'L'], '<plug>NERDCommenterComment', 'comment lines', 0)
call SpaceVim#custom#SPC('nmap', ['c', 'p'], 'vip<Plug>NERDCommenterInvert', 'toggle comment paragraphs', 0)
call SpaceVim#custom#SPC('nmap', ['c', 'P'], 'vip<Plug>NERDCommenterComment', 'comment paragraphs', 0)
call SpaceVim#custom#SPC('nmap', ['m', 'i'], ':Unite go/import<CR>', 'go import', 0)
call SpaceVim#custom#SPC('nmap', ['m', 'r'], ':GoReferrers<CR>', 'go referrers', 0)
call SpaceVim#custom#SPC('nmap', ['m', 'o'], ':GoInfo<CR>', 'go info', 0)
call SpaceVim#custom#SPC('nmap', ['q'], ':qa<CR>', 'quite', 0)

nnoremap <silent> <Leader>gl :Gina pull<CR>
nnoremap <silent> <Leader>gL :Gina log<CR>
nnoremap <silent> <F10> :Gina branch<CR>
vnoremap <silent> <C-c> "+y
nnoremap <silent> <F5> :e<CR>
nnoremap <silent> ! :!

let g:spacevim_colorscheme = 'atom'

let g:spacevim_enable_powerline_fonts = 1
let g:spacevim_guifont='DroidSansMonoForPowerline\ Nerd\ Font:h11'
let g:spacevim_enable_tabline_filetype_icon=0
let g:spacevim_buffer_index_type = 4

let g:go_auto_type_info = 0
let g:go_auto_sameids = 1
let g:go_updatetime = 500
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1

au FileType go let $GOPATH=go#path#Detect()
