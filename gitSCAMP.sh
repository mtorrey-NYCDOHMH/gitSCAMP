#!/bin/bash
## Version: 1.1.0
## git Status to show if you are making any mistakes, git Commit Add with a Message, and then not to forget git Push.
## thus, SCAMP
if [[ "$@" = -h ]] || [[ "$@" = --help ]];
 	then printf "useage: gitSCAMP.sh
		Will show you the current status of your git repo and who you will commit as.
		If you want to continue with the commit, enter a commit message (without quotes).
		Note: if you have not added your current changes, this script will add them with the commit -a switch.
		(This will NOT add files that aren't currently tracked. If you see 'untracked files' that you want
		to include, you need to stop this script and git add them manually.)
		If you are committing as the wrong user, stop the script and do a git config user.name and user.email."
else
	printf "\nSTATUS (note any untracked files listed in red):\n" \
	&& git status \
	&& printf "\nCOMMITTING AS:\n" \
	&& git config user.name \
	&& git config user.email \
	&& printf "\nPUSHING TO:\n" \
	&& git config --get remote.origin.url \
	&& printf "\nON BRANCH (I say again):\n" \
	&& git branch --show-current \
	&& printf "\n(This will add tracked files, but you need to add untracked files manually!)\n " \
	&& printf "Enter commit message (without quotes) to continue with commit/push (ctrl-c to stop): "
	read commitmsg
	printf "\nCOMMITTING:\n" \
	&& git commit -am "$commitmsg" \
	&& printf "\nPUSHING:\n" \
	&& git push \
	&& printf "\nFINAL STATUS:\n" \
	&& git status
fi

