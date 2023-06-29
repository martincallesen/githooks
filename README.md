# Description
Git hooks that I like to have installed in my git repositories

# Features
pre-push - Prevent Pushes With Untracked Source Files

## Prepush
A hook script to verify that a push is not done with untracked source file.

To use it, either symlink this script to $your-git-clone/.git/hooks/pre-push
or include it in your existing pre-push script.
```
curl https://raw.githubusercontent.com/martincallesen/githooks/main/pre-push > pre-push && chmod +x pre-push
```

## Prepare Commit Message
A hook script to prepare a commit message with branch name.

To use it, either symlink this script to $your-git-clone/.git/hooks/prepare-commit-msg
or include it in your existing pre-push script.
```
curl https://raw.githubusercontent.com/martincallesen/githooks/main/prepare-commit-msg > prepare-commit-msg && chmod +x prepare-commit-msg
```
