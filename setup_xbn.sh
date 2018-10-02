#!/bin/bash
dir_name="xbn"
echo " xbn -- setup: started"
current_date=$(date '+%d/%m/%Y %H:%M:%S'); echo " xbn -- setup: "$current_date
if [ -e ~/$dir_name ]; then
	echo " xbn -- setup: 'xbn' directory already exists"
	echo " xbn -- setup: exit"
	exit
else
	# Make xbn dir
	mkdir ~/$dir_name
	if [ -e ~/$dir_name ]; then
		echo " xbn -- setup: 'xbn' directory sucesfully created"
	else
		echo " xbn -- setup: ERROR unable to create 'xbn' directory"
		echo " xbn -- setup: exit"
		exit
	fi
fi
# Make resources dir
if [ -e ~/$dir_name/resources ]; then
	echo " xbn -- setup: ERROR unable to create 'resources' directory"
	echo " xbn -- setup: exit"; exit
else
	mkdir ~/$dir_name/resources
	if [ -e ~/$dir_name/resources ]; then
		echo " xbn -- setup: 'resources' directory sucesfully created"
	else
		echo " xbn -- setup: ERROR unable to create 'resources' directory"
		echo " xbn -- setup: exit"; exit
	fi
fi

# Make help.txt
if [ -e ~/$dir_name/resources/help.txt ]; then
	echo " xbn -- setup: ERROR unable to create 'help.txt' file"
	echo " xbn -- setup: exit"; exit
else
touch ~/$dir_name/resources/help.txt
cat <<'EOF' >> ~/$dir_name/resources/help.txt
:: version: 1.5 by Craig Carter, 2018

	1. open     —-   opens xbn folder in Finder.
	2. list     -—   lists all current programs in xbn.
	3. load     —-   moves program from current directory into xbn.
	4. unload   —-   removes program from xbn and places in current directory.
	5. delete   --   permanently deletes program from xbn folder
	6. help     —-   prints out a list of all possible commands.
	7. convert  —-   converts programs to Unix executable.

:: Sample syntax: xbn convert myscript.sh
EOF
	if [ -e ~/$dir_name/resources/help.txt ]; then
		echo " xbn -- setup: 'help.txt' file sucesfully created"
	else
		echo " xbn -- setup: ERROR unable to create 'help.txt' file"
		echo " xbn -- setup: exit"; exit
	fi
fi
cp xbn ~/$dir_name
if [ -e ~/$dir_name/xbn ]; then
	echo " xbn -- setup: 'xbn' program sucesfully copied"
else
	echo " xbn -- setup: ERROR unable to copy 'xbn' program"
	echo " xbn -- setup: exit"; exit
fi
if [ -e ~/.bash_profile ]; then
	cp ~/.bash_profile ~/.bash_profile-xbn-backup
	echo ' # xbn: CLI application manager' >> ~/.bash_profile
	echo ' PATH=$PATH":$HOME/.xbn"' >> ~/.bash_profile
	echo " xbn -- setup: '.bash_profile' sucesfully updated"
else
	echo " xbn -- setup: ERROR unable to edit '.bash_profile' file"
fi
echo " xbn -- setup: completed"
echo " xbn -- setup: exit"

