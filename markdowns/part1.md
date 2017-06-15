# Git Without Terror

TODO: use image with man pages for git?
TODO: set config so we can commit (global or not?)

  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"

TODO: what about editor?
TODO: should we have Alice and Bob repositories?

## Use immutable tags

A tag identifies a particular point in the history of your repository, typically something like the release of a new version. It is different from a branch: you can keep adding commits to a branch, and the tip of the branch will point at different commits at different points in time.

For instance, let's create a tag for the version 1 of your project:

```
git tag -a v1.0.0 -m "Version 1"
```

The -a option creates an *annotated* tag with additional information including an author, a message specified by the -m option, as well as the tagging date and checksum information.

@[Create a git tag]({"command":"/bin/bash /project/target/scripts/validate-tag-create.sh"})

Now, assume that somehow you messed up your release, and forgot an important file. You decide to add that file, commit, and re-tag v1.0.0. Try to do this in the terminal by adding a file, committing, and tagging v1.0.0 again:

@[Updating a git tag]({"command":"/bin/bash /project/target/scripts/validate-tag-update.sh 2>&1 | tee lapin"})

What happened? Git complains that `tag 'v1.0.0' already exists`. There are several possibilities at this point:

  * if you have not pushed your tag yet, you can safely re-create the tag either by removing it first or overridding it with the `-f` option,
  * if you have already pushed your tag, your only sane option is to create a new tag such as `v1.0.1`. This is because others that have already checked out the tag will never see updates you make to that tag.

TODO: how to show that?

## Manipulate history

### Rebase safely

TODO: repo with master and new-feature

checkout new-feature
rebase master

Note: git is immutable. Even if you don't see the old commits anymore in the history with git log, all the data is still here. You can verify that by checking out a previous commit such as b5098234.

git checkout b5098234

Remembering a commit id is not very user-friendly, instead you may want to branch before rebasing.

### Reset in depth

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
