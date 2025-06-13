" file_reference.vim - Copy file/directory paths
" Maintainer:   Andrew Woods <http://andrewwoods.net/>
" Version:      0.9.1

if exists("g:loaded_file_reference") || v:version < 800
  finish
endif
let g:loaded_file_reference = 1


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
    let l:filedata=expand("%:t") . ":" . line(".")
    let l:register=g:FileReferenceDefaults.register

    if exists('g:FileReference')
        let l:register=g:FileReference.register
    endif

    call setreg(l:register, l:filedata)
    echo 'copied: ' . l:filedata . ' to ' . l:register
endfunction
command! CopyBaseFilenameAndLineNumber :call CopyBaseFilenameAndLineNumber()

function! CopyFullDirectory()
    let l:filedata=expand("%:p:h")
    let l:register=g:FileReferenceDefaults.register

    if exists('g:FileReference')
        let l:register=g:FileReference.register
    endif

    call setreg(l:register, l:filedata)
    echo 'copied: ' . l:filedata . ' to ' . l:register
endfunction
command! CopyFullDirectory :call CopyFullDirectory()

function! CopyFullPath()
    let l:filedata=expand("%:p")
    let l:register=g:FileReferenceDefaults.register

    if exists('g:FileReference')
        let l:register=g:FileReference.register
    endif

    call setreg(l:register, l:filedata)
    echo 'copied: ' . l:filedata . ' to ' . l:register
endfunction
command! CopyFullPath :call CopyFullPath()

function! CopyFullPathAndLineNumber()
    let l:filedata=expand("%:p") . ":" . line(".")
    let l:register=g:FileReferenceDefaults.register

    if exists('g:FileReference')
        let l:register=g:FileReference.register
    endif

    call setreg(l:register, l:filedata)
    echo 'copied: ' . l:filedata . ' to ' . l:register
endfunction
command! CopyFullPathAndLineNumber :call CopyFullPathAndLineNumber()

function! CopyRelativeDirectory()
    let l:filedata=expand("%:h")
    let l:register=g:FileReferenceDefaults.register

    if exists('g:FileReference')
        let l:register=g:FileReference.register
    endif

    call setreg(l:register, l:filedata)
    echo 'copied: ' . l:filedata . ' to ' . l:register
endfunction
command! CopyRelativeDirectory :call CopyRelativeDirectory()

function! CopyRelativePath()
    let l:filedata=expand("%")
    let l:register=g:FileReferenceDefaults.register

    if exists('g:FileReference')
        let l:register=g:FileReference.register
    endif

    call setreg(l:register, l:filedata)
    echo 'copied: ' . l:filedata . ' to ' . l:register
endfunction
command! CopyRelativePath :call CopyRelativePath()

function! CopyRelativePathAndLineNumber()
    let l:filedata=expand("%") . ":" . line(".")
    let l:register=g:FileReferenceDefaults.register

    if exists('g:FileReference')
        let l:register=g:FileReference.register
    endif

    call setreg(l:register, l:filedata)
    echo 'copied: ' . l:filedata . ' to ' . l:register
endfunction
command! CopyRelativePathAndLineNumber :call CopyRelativePathAndLineNumber()

