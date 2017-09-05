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
call SpaceVim#layers#load('lang#python')
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

let g:neomake_tex_enabled_makers = ['chktex']

if has('python3')
  let g:ctrlp_map = ''
  nnoremap <silent> <C-p> :Denite file_rec<CR>
endif

set tabstop=4
let g:spacevim_custom_plugins= [ 
      \ ['tpope/vim-sensible'],
      \ ['kana/vim-smartword'],
      \ ['vim-scripts/argtextobj.vim'],
      \ ['saihoooooooo/vim-textobj-space'],
      \ ['zhujinxuan/snippets-tex-equations', {'on_ft' : 'tex'}],
      \]
let g:spacevim_unite_leader = '<F5>'
let g:spacevim_window_leader = '<F7>'
let g:spacevim_denite_leader = '<F6>'
let g:spacevim_snippet_engine = 'ultisnips'

call SpaceVim#custom#SPC('nmap', ['c', 'c'], '<plug>NERDCommenterInvert', 'toggle comment lines', 0)
call SpaceVim#custom#SPC('nmap', ['c', 'C'], '<plug>NERDCommenterComment', 'comment lines', 0)
call SpaceVim#custom#SPC('nmap', ['c', 'l'], '<plug>NERDCommenterInvert', 'toggle comment lines', 0)
call SpaceVim#custom#SPC('nmap', ['c', 'L'], '<plug>NERDCommenterComment', 'comment lines', 0)
call SpaceVim#custom#SPC('nmap', ['c', 'p'], 'vip<Plug>NERDCommenterInvert', 'toggle comment paragraphs', 0)
call SpaceVim#custom#SPC('nmap', ['c', 'P'], 'vip<Plug>NERDCommenterComment', 'comment paragraphs', 0)
call SpaceVim#custom#SPC('nmap', ['b', '#'], ':b #<CR>', 'Previously active buffer(:b #)', 0)
call SpaceVim#custom#SPC('nmap', ['q'], ':qa<CR>', 'quit', 0)

let g:spacevim_colorscheme = 'atom'

let g:spacevim_enable_powerline_fonts = 1
let g:spacevim_guifont='DroidSansMonoForPowerline\ Nerd\ Font:h11'
let g:spacevim_enable_tabline_filetype_icon=0
let g:spacevim_buffer_index_type = 4

let g:go_auto_type_info = 1
let g:go_auto_sameids = 1
let g:go_updatetime = 200
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1

au FileType go let $GOPATH=go#path#Detect()
