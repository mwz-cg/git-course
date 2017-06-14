# Git Without Terror

bla bla

## Tags are immutable

Create a tag with:

```
git tag v1.0.0
```

Pouette
@[Create a git tag]({"command":"/bin/bash /project/target/scripts/validate-tag-create.sh"})

## Rebase safely

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
