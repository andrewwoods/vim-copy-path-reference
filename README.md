
# File Reference for Vim 

__Copy your file location to your system clipboard__

There's a great feature in PhpStorm (and other JetBrains editors) that's is
missing in Vim. That's the `Copy Reference` command that copies the path to the
file and the line number to your system clipboard. This makes it easy to share
your exact position in the project with another developer. Whether you paste it
into Slack, Discord, or E-mail, is up to you. This is especially useful when
collaborating your fellow developers using PhpStorm. VSCode can copy the path,
but doesn't seem to have the ability to include the line number.

Vim by default doesn't have an established project root. PhpStorm, for
example, has a .idea directory to manage project information, which is located
in the project root. To enable this, you can use `:mksession` or the Startify plugin.
In Vim, your project "root", is determined by where you start Vim. The  So relative paths use this
directory.

CopyRelativeDirectory
CopyRelativePath
CopyRelativePathAndLineNumber


## Version

The current version is 0.5.1. This project uses [semantic versioning](http://semver.org).


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

