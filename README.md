# gitSCAMP -- git Status Commit Add Message and Push

Are you like me? Do you constantly forget to add files to your git repo
before pushing them? Do you make commits and only 20 commits later
realize you forgot to set the user.name so that commit you made for
work was attributed to the embarrassing nickname you had in high school
that you use for you username on your home Arch Linux box? Are you a
perennial and unrepentant commit pusher so fixing old commits becomes a
huge pain?

Well fret no more! gitSCAMP to the rescue. A not-smart bash script that
strings together a whole bunch of git commands in a row to try to keep
you from making mistakes. How so? Only by making _sure_ you do all the
things that you _should_ be doing every time you use git anyway: check
the status of your repo, check the branch, check what the user and email
configs are set to, and check that you are actually pushing to the right
remote, and _then_ stops to give you a chance to quit.

It's really not much of a bash script.

Usage:
On your whatever-linux command line, inside your git repo, when you're
ready to commit, run:
gitSCAMP.sh

It will show you everything you forgot to check, and then stop and wait
for you to put in a commit message. Once you've done that, it will
commit, push, and then show you the status of the repo again (check once
again that you don't have untracked files!)

If you're just starting out with git, I honestly don't recommend using
this script. Git is really complicated, and this script is going to bury
some of the complexity that you'll really want to be internalizing as
you get to know git. This script is not a good shortcut. When you get to
the point where you realize you _should_ be typing 'git status' before
you commit every time, but, being human, you often forget; then might be
the time to try out this script.

Of course, by that time you will probably already have a much better git
work flow established, and probably much better tools than this. So I'm
not sure who this will be useful for. But I find it useful, so why not
make it available?


