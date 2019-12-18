#! /bin/bash

if  [ -z $@ ]; then
	# no arguments, let's just open sublime
	subl
elif  [ $1 != '.' ]; then
	# passing args and $1 is not a .
	subl $@
else
	# look for a project file ... redirect stderr to /dev/null so
	# we won't see the error message if the file does not exist.
	# changed this from `find . -iname *.sublime-project` because
	# that does a recursive find which is problematic when wanting
	# to open something like a home directory (recursively looks
	# for all sublime projects ... not good). this also assumes
	# there will at most one project file in a directory. not sure
	# why someone might have more, but if they do, they should
	# specify on the command line which one they want to open

	PROJECT=`ls *.sublime-project 2>/dev/null`

	# added quotes around $PROJECT to account for spaces and such
	# in the file name
	if  [ -e "$PROJECT" ]; then
		# project exists in current folder, open it
		subl . --project "$PROJECT"
	else
		# no project, open current folder
		subl .
	fi
fi
