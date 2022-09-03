"
" Vim File Reference
"


function! CopyBaseFilename()
    let @*=expand("%:t")
    echo 'copied: CopyBaseFilename'
endfunction
command! CopyBaseFilename :call CopyBaseFilename()

function! CopyBaseFilenameAndLineNumber()
    let @*=expand("%:t") . ":" . line(".")
    echo 'copied: CopyBaseFilenameAndLineNumber'
endfunction
command! CopyBaseFilenameAndLineNumber :call CopyBaseFilenameAndLineNumber()

function! CopyFullDirectory()
    let @*=expand("%:p:h")
    echo 'copied: CopyFullDirectory'
endfunction
command! CopyFullDirectory :call CopyFullDirectory()

function! CopyFullPath()
    let @*=expand("%:p")
    echo 'copied: CopyFullPath'
endfunction
command! CopyFullPath :call CopyFullPath()

function! CopyFullPathAndLineNumber()
    let @*=expand("%:p") . ":" . line(".")
    echo 'copied: CopyFullPathAndLineNumber'
endfunction
command! CopyFullPathAndLineNumber :call CopyFullPathAndLineNumber()

