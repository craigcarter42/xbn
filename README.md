# xbn v1.5
Simple command line applications manager. Easily add your CLI scripts to you command line interface of choice. xbn was designed with macOS to improve productivity of developers and hobbyists alike.

# Command Line Arguments:
  1. open     —-   opens xbn folder in Finder.
  2. list     -—   lists all current programs in xbn.
  3. load     —-   moves program from current directory into xbn.
  4. unload   —-   removes program from xbn and places in current directory.
  5. delete   --   permanently deletes program from xbn folder
  6. help     —-   prints out a list of all possible commands.
  7. convert  —-   converts programs to Unix executable.

# Configuration:
1. Add the following to .bash_profile in your home directory.
   - PATH=$PATH":$HOME/.xbn
2. Create a folder named: (.xbn) in your home directory.
   - mkdir ~/.xbn

# Using Installer:
To use setup_xbn.sh run script in shell whithin the install folder. Both 'setup_xbn.sh' and 'xbn' must be located in the same folder. More improvents coming soon.

# Syntax
xbn convert myscript.sh
xbn load myscript

# Compatibility:
Stable:
- macOS 10.12.6
- macOS 10.13.6
- macOS 10.14.0

Beta:
- Linux
- Unix

# Upcoming Features:
 - User settings
 - Greater control over installed applications
 - Finish installer

