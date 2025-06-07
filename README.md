
# Copy Path Reference for Vim

__Copy your file location to your system clipboard__

There's a useful feature in PhpStorm (and other JetBrains editors) that's is
missing in Vim. That's the `Copy Reference` command that copies the path to the
file and the line number to your system clipboard. Well, it's not missing,
technically speaking. It is kind of buried though, and not really intuitive.
This plugin makes it easy to share your exact position in the project with
another developer.

Vim and Neovim by default doesn't have an established project root. In Vim,
your project "root", is determined by where you start Neovim or Vim. __Relative
paths use this directory__. The functions of this plugin are descriptively
named to wrap the builtin Vim functionality.

```
CopyBaseFilename
CopyBaseFilenameAndLineNumber
CopyFullPath
CopyFullPathAndLineNumber
CopyFullDirectory
CopyRelativeDirectory
CopyRelativePath
CopyRelativePathAndLineNumber
```

## Suggested Leader Mappings

### Neovim

```
vim.keymap.set("n", "<leader>cb", "<cmd>CopyBaseFilenameAndLineNumber<CR>", { desc = "[C]opy [B]ase Filename" })
vim.keymap.set("n", "<leader>cf", "<cmd>CopyFullPathAndLineNumber<CR>", { desc = "[C]opy [F]ull Path" })
vim.keymap.set("n", "<leader>cp", "<cmd>CopyRelativePathAndLineNumber<CR>", { desc = "[C]opy Relative [P]ath" })
vim.keymap.set("n", "<leader>cr", "<cmd>CopyRelativeDirectory<CR>", { desc = "[C]opy [R]elative Directory" })
```

### Vim


## Version

The current version is 0.9.0. This project uses [semantic versioning](http://semver.org).


## Examples

### Base Filename

The **CopyBaseFilename** - copies the last segment of the file path in the
clipboard.

```
README.md
```

**CopyBaseFilenameAndLineNumber** - copies the last segment of the file path in
the clipboard.

```
README.md:29
```

### Full Paths

**CopyFullDirectory** - copies the absolute path of the directory containing
the file into the clipboard.

```
/Users/awoods/src/public/vim-file-reference
```

**CopyFullPath** - copies the absolute path of the file into the clipboard.

```
/Users/awoods/src/public/vim-file-reference/README.md
```

**CopyFullPathAndLineNumber** - copies the absolute path of the file and
current line number into the clipboard.

```
/Users/awoods/src/public/vim-file-reference/README.md:47
```

### Relative Paths

**CopyRelativeDirectory** - copies the relative directory of the file into the
clipboard. If the current file is in the "project root", this will return
a period. Otherwise, the path will begin with the directory below the project
root.

```
.
```

A file like `docs/CONTRIBUTING.md` would return the following value.

```
docs
```

**CopyRelativePath** - copies the relative path of the file into the clipboard.

```
README.md
```

**CopyRelativePathAndLineNumber** - copies the relative path of the file and
current line number into the clipboard.

```
README.md:66
```

## Ideas for sections/pages

* Language Translations
* Frequently Asked Questions (FAQ)
* Screenshots



## Resources

* [Semantic Versioning](http://semver.org)
* [GitHub Markdown](https://help.github.com/categories/writing-on-github/)
* [Contributing Guidelines](https://help.github.com/articles/setting-guidelines-for-repository-contributors/)
* [Changelog](docs/CHANGELOG.md)
* [Humans TXT](http://humanstxt.org/)
* [Robots TXT](http://www.robotstxt.org/) 
* [Git Ignore Generator](https://www.gitignore.io/)
* [Open Source Licenses](http://opensource.org/licenses/GPL-3.0)



## Credits and Acknowledgments

* Project Creator: [Andrew Woods](https://andrewwoods.net)

