"
" Vim File Reference
"


function! CopyFullPathAndLineNumber()
    let @*=expand("%:t") . ":" . line(".")<CR>
    echo 'copied: CopyFullPathAndLineNumber'
endfunction
command! CopyFullPathAndLineNumber :call CopyFullPathAndLineNumber()

