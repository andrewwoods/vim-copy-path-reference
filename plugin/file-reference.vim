"
" Vim File Reference
"

"
"---- Check Feature Support ------------------------------------
"

if !has("clipboard")
   echoerr 'Sorry. Your Vim does not have clipboard support'
   finish
endif

let g:FileReferenceDefaults = { 'register': '+' }

"
"---- Functions ------------------------------------------------
"

function! CopyBaseFilename()
    let l:filedata=expand("%:t")
    let l:register=g:FileReferenceDefaults.register

    if exists('g:FileReference')
        let l:register=g:FileReference.register
    endif

    call setreg(l:register, l:filedata)
    echo 'copied: ' . l:filedata . ' to ' . l:register
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

function! CopyRelativeDirectory()
    let @*=expand("%:h")
    echo 'copied: CopyRelativeDirectory'
endfunction
command! CopyRelativeDirectory :call CopyRelativeDirectory()

function! CopyRelativePath()
    let @*=expand("%")
    echo 'copied: CopyRelativePath'
endfunction
command! CopyRelativePath :call CopyRelativePath()

function! CopyRelativePathAndLineNumber()
    let @*=expand("%") . ":" . line(".")
    echo 'copied: CopyRelativePathAndLineNumber'
endfunction
command! CopyRelativePathAndLineNumber :call CopyRelativePathAndLineNumber()

