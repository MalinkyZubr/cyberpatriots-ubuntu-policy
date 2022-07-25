#!/bin/bash

# first to send email you must do sudo apt install ssmpt
# then do gedit /etc/ssmtp/ssmtp.conf

# then write 
# root=email@email.com
# mailhub=smtp.AOL.com:587
# AuthUser=emailusername
# AuthPass=password
# UseSTARTTLS=yes

# you can either make a text file to store the email, or just send it directly

ssmpt mazookazinga@AOL.com
# then you can structure it on command line
# to:
# from:
# cc:
# (contents here)