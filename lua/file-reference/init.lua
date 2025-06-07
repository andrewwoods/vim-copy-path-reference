-- Creates an object for the module. All of the module's
-- functions are associated with this object, which is
-- returned when the module is called with `require`.
local FileRef = {}

--  The base filename refers to the final segment of a file path.
function CopyBaseFilename()
	vim.l.filedata = expand("%:t")
	vim.l.register = vim.g.FileReferenceDefaults.register

	if exists("vim.g.FileReference") then
		vim.l.register = vim.g.FileReference.register
	end

	vim.fn.setreg(vim.l.register, vim.l.filedata)
	print("copied: " .. vim.l.filedata .. " to " .. vim.l.register)
end
-- command! CopyBaseFilename :call CopyBaseFilename()

function CopyBaseFilenameAndLineNumber()
    vim.l.filedata=expand("%:t") . ":" . line(".")
    vim.l.register=g:FileReferenceDefaults.register

    if exists('g:FileReference') then
        vim.l.register=g:FileReference.register
    end

    vim.fn.setreg(vim.l.register, vim.l.filedata)
    print('copied: ' .. vim.l.filedata .. ' to ' .. vim.l.register)
end

function CopyFullPath()
	vim.l.filedata = expand("%:p")
	vim.l.register = vim.g.FileReferenceDefaults.register

	if exists("g:FileReference") then
		vim.l.register = vim.g.FileReference.register
	end

	vim.fn.setreg(vim.l.register, vim.l.filedata)
	print("copied: " .. vim.l.filedata .. " to " .. vim.l.register)
end
-- command! CopyFullPath :call CopyFullPath()


function CopyFullPathAndLineNumber()
    vim.l.filedata = expand("%:p") .. ":" .. line(".")
    vim.l.register = vim.g.FileReferenceDefaults.register

    if exists('g:FileReference') then
        vim.l.register = vim.g.FileReference.register
    end

    vim.fn.setreg(vim.l.register, vim.l.filedata)
    print('copied: ' .. vim.l.filedata .. ' to ' .. vim.l.register)
end


function CopyFullDirectory()
    vim.l.filedata = expand("%:p:h")
    vim.l.register = vim.g.FileReferenceDefaults.register

    if exists('vim.g.FileReference') then
        vim.l.register = vim.g.FileReference.register
    end

    vim.fn.setreg(vim.l.register, vim.l.filedata)
    print('copied: ' .. vim.l.filedata .. ' to ' .. vim.l.register)
end



function CopyRelativeDirectory()
    vim.l.filedata = expand("%:h")
    vim.l.register = vim.g.FileReferenceDefaults.register

    if exists('vim.g.FileReference') then
        vim.l.register = vim.g.FileReference.register
    end

    vim.fn.setreg(vim.l.register, vim.l.filedata)
    print('copied: ' .. vim.l.filedata .. ' to ' .. vim.l.register)
end


function CopyRelativePath()
    vim.l.filedata = expand("%")
    vim.l.register = vim.g.FileReferenceDefaults.register

    if exists('vim.g.FileReference') then
        vim.l.register = vim.g.FileReference.register
    end

    vim.fn.setreg(vim.l.register, vim.l.filedata)
    print('copied: ' .. vim.l.filedata .. ' to ' .. vim.l.register)
end


function CopyRelativePathAndLineNumber()
    vim.l.filedata = expand("%") .. ":" .. line(".")
    vim.l.register = vim.g.FileReferenceDefaults.register

    if exists('vim.g.FileReference') then
        vim.l.register = vim.g.FileReference.register
    end

    vim.fn.setreg(vim.l.register, vim.l.filedata)
    print('copied: ' .. vim.l.filedata .. ' to ' .. vim.l.register)
end

-- CopyBaseFilename
-- CopyBaseFilenameAndLineNumber
-- CopyFullPath
-- CopyFullPathAndLineNumber
-- CopyFullDirectory
-- CopyRelativeDirectory
-- CopyRelativePath
-- CopyRelativePathAndLineNumber


return FileRef
