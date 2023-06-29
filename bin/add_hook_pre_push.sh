#!/bin/bash

# Set the URL of the git hook you want to add
HOOK_URL="https://raw.githubusercontent.com/martincallesen/githooks/main/pre-push"

# Set the directory where your git repositories are located
REPO_DIR="${1}"

# Iterate over the git repositories
for repo in $(find "$REPO_DIR" -type d -name ".git"); do
    # Extract the parent directory of the .git folder (the repository directory)
    repo_dir=$(dirname "$repo")

    # Go into the repository directory
    cd "$repo_dir" || continue

    # Add the git hook from the specified URL
    curl -o ".git/hooks/pre-push" "$HOOK_URL"
    chmod +x ".git/hooks/pre-push"

    # Print a message indicating the hook has been added
    echo "Added pre-push hook to repository: $repo_dir"
done