# Description
Git hooks that i like to have

# Features
pre-push - Prevent Pushes With Untracked Source Files

## Prepush
A hook script to verify that a push is not done with untracked source file
To use it, either symlink this script to $your-git-clone/.git/hooks/pre-push
or include it in your existing pre-push script.
```
curl https://raw.githubusercontent.com/martincallesen/githooks/main/pre-push > pre-push && chmod +x pre-push
```
