"
" Vim File Reference
"


function! CopyFullPathAndLineNumber()
    let @*=expand("%:p") . ":" . line(".")
    echo 'copied: CopyFullPathAndLineNumber'
endfunction
command! CopyFullPathAndLineNumber :call CopyFullPathAndLineNumber()

