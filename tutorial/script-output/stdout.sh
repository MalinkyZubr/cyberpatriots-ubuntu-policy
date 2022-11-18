#! /bin/bash

ls -al 1>file1.txt 2>file2.txt  # ls -al is the command. 1> and 2> represent stdout and stderror respectively. The output of the command will be diverted to these two files.
# if we do not specify 1 or 2 it will automatically assume that we want the stdout to go to our file

# we can make both go to one file however
# ls -al >file.txt 2>&1