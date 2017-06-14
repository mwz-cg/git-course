# Git Without Terror

TODO: use image with man pages for git?
TODO: set config so we can commit (global or not?)

  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"

TODO: what about editor?

## Tags are immutable

Create a tag with:

```
git tag -a v1.0.0 -m "Version 1"
```

The -a option creates an *annotated* tag with additional information including an author, a message specified by the -m option, and a date.

@[Create a git tag]({"command":"/bin/bash /project/target/scripts/validate-tag-create.sh"})

To push that tag to the origin:

```
git push origin v1.0.0
```

## Rebase safely

Note: git is immutable. Soft reset to an earlier commit, commit, and when you look in your history with git log you don't see the old commits anymore.
All the data is still here, however. Use git reflog to see it. 

Note: git collects unused data with `git gc`
Question: what happens if you run `git gc`? Can you still access old data?

## Reset in depth

## Stash in action


You can also create a full list of directories and subdirectories using in 1 comamand using the `-p` parameter.
```
mkdir -p /images/sub1/sub2
```
will create the complete directory hierarchy structure in one single line.

> The `mkdir` command manual is accesible here: [mkdir](http://man7.org/linux/man-pages/man1/mkdir.1.html)

## File management

You can change a file timestamp using the `touch <file>` command.
```
touch /hello.txt
```
will update the access and modification time of the `hello.txt` file. If the file does not already exists on the system, it will be created with an empty content.

## In practice
@[Create an empty file called valid_file under the directory /foo/bar/valid_file]({"command":"/bin/bash /project/target/validate1.sh"})
