#!/bin/bash
# Version: 1.2.0 (revised by ChatGPT 2025-10-24)
# git Status, Commit Add with Message, and Push — SCAMP

set -e  # exit immediately on unhandled errors

if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    cat <<'EOF'
Usage: gitSCAMP.sh

Shows current git status and who you are committing as.
If you continue, enter a commit message (without quotes).

Notes:
- Only tracked files are added automatically (-a switch).
- Untracked files must be added manually with 'git add'.
- To change commit identity, use:
    git config user.name "Your Name"
    git config user.email "you@example.com"
EOF
    exit 0
fi

echo
echo "STATUS (note any untracked files listed in red):"
git status
echo

echo "COMMITTING AS:"
git config user.name
git config user.email
echo

echo "PUSHING TO:"
git config --get remote.origin.url
echo

echo "ON BRANCH:"
git branch --show-current
echo
echo "(This will add tracked files, but you need to add untracked files manually!)"
echo
read -r -p "Enter commit message (Ctrl-C to abort): " commitmsg
echo

if [[ -z "$commitmsg" ]]; then
    echo "Aborted: no commit message entered."
    exit 1
fi

echo "COMMITTING:"
git commit -am "$commitmsg" || echo "Nothing to commit."
echo

echo "PUSHING:"
git push
echo

echo "FINAL STATUS:"
git status

