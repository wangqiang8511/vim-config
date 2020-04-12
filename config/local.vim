" switch buffer
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> [n :bnext<CR>

" shortcuts to vimdiff, http://stackoverflow.com/questions/7309707/why-does-git-mergetool-opens-4-windows-in-vimdiff-id-expect-3
if &diff
    map <leader>1 :diffget LOCAL<CR>
    map <leader>2 :diffget BASE<CR>
    map <leader>3 :diffget REMOTE<CR>
endif

" change tab
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
" https://stackoverflow.com/questions/15583346/how-can-i-temporarily-make-the-window-im-working-on-to-be-fullscreen-in-vim
nnoremap tt :tab split<CR>

" Sudo to write
cnoremap w!! w !sudo tee % >/dev/null

" disable autochdir
set noautochdir
set signcolumn=no
set listchars=tab:>-

" Term mode key mapping to esc
if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    tnoremap <C-v><Esc> <Esc>
endif

nnoremap <leader>svt :vsplit \| term <CR>
nnoremap <leader>sgt :split \| term <CR>
nnoremap <leader>stt :tab \| term <CR>
nnoremap <leader>stt :tab \| term <CR>
nnoremap <leader>rb :RainbowParentheses!! <CR>

" vim wiki config use markdown
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
