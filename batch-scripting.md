# Batch Scripting

## Curriculum:
cat /etc/shells
shows all the sheels available on the machine. 
## Hello bash scripting
we will include /bin/bash in every script we make

to mnake a new script via command lne we can do "touch (filename).sh

to make a bash file executable you do "chmod +x (filename).sh

check hello.sh
## Redirect to file
how can we have console output automatically be fed into a file?

the way to specify that something should go to a file is with >

(content to go into file from stdout) > (desire output file)

this also works if you want to edit a file

cat > filename

after this you will be able to edit the file. If the file doesnt exist, it will be created. Note that the > tells the program to OVERWRITE

if we dont want to overwrite but instead append,

cat >> filename

just make it double!
## heredoc
cat << variablename
this is a test hello hello
variablename

basically what this does is that it assigns a variablename to a set of text and tells the bash script to output it on stdout. Its basically longer echo. Show comments on output maybe
## Conditionals

## Loops
## Script input
## Script output
## Pipes
## Strings processing
## Numbers and arithmetic
## Declare command
## Arrays
## Functions
## files and directories
## sending emails
## Curl in scripts
## professional menus
## Wait for filesystem events with inotify
## Intro to grep
## Intro to AWK
## Introduction to sed
## Debugging bash scripts
