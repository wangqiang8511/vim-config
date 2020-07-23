" coc.nvim settings
" ---
let g:coc_global_extensions = ['coc-snippets', 'coc-python', 'coc-json', 'coc-metals', 'coc-omnisharp', 'coc-tsserver', 'coc-rls']
" Don't load the defx-git plugin file, not needed
let b:defx_git_loaded = 1

" Use <Tab> for trigger completion and navigate to the next complete item
let g:coc_snippet_next = '<tab>'
inoremap <silent><expr> <Tab>
	\ pumvisible() ? "\<C-n>" :
	\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
	\ <SID>check_back_space() ? "\<Tab>" :
	\ coc#refresh()

inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() :
	\ delimitMate#WithinEmptyPair() ? "\<C-R>=delimitMate#ExpandReturn()\<CR>" :
	\"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return ! col || getline('.')[col - 1] =~? '\s'
endfunction

augroup user_plugin_coc
	autocmd!
	autocmd CompleteDone * if pumvisible() == 0 | pclose | endif
augroup END

" use <c-space>for trigger completion
inoremap <silent><expr> <C-space> coc#refresh()

" Movement within 'ins-completion-menu'
imap <expr><C-j>   pumvisible() ? "\<Down>" : "\<C-j>"
imap <expr><C-k>   pumvisible() ? "\<Up>" : "\<C-k>"

" Scroll pages in menu
inoremap <expr><C-f> pumvisible() ? "\<PageDown>" : "\<Right>"
inoremap <expr><C-b> pumvisible() ? "\<PageUp>" : "\<Left>"
imap     <expr><C-d> pumvisible() ? "\<PageDown>" : "\<C-d>"
imap     <expr><C-u> pumvisible() ? "\<PageUp>" : "\<C-u>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap gs <Plug>(coc-git-chunkinfo)
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" show commit contains current position
nmap gC <Plug>(coc-git-commit)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
	if (index(['vim', 'help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		let l:found = CocAction('doHover')
	endif
endfunction


" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
xmap <leader>wf  <Plug>(coc-format)
nmap <leader>wf  <Plug>(coc-format)
xmap <leader>as  <Plug>(coc-codeaction-selected)
nmap <leader>as  <Plug>(coc-codeaction-selected)

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>ca  :<C-u>Denite coc-diagnostic<cr>
" Manage extensions.
nnoremap <silent> <space>ce  :<C-u>Denite coc-extension<cr>
" Show commands.
nnoremap <silent> <space>cc  :<C-u>Denite coc-command<cr>
" Find symbol of current document.
nnoremap <silent> <space>co  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>cs  :<C-u>Denite coc-symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>cj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>ck  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>cr  :<C-u>CocListResume<CR>

" coc-metals toggle tree view
nnoremap <silent> <space>cmt :<C-u>CocCommand metals.tvp<CR>
