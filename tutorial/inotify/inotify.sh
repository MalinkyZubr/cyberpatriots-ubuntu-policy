#! /bin/bash

# inotify is a subsystem that allows linux to tell when a file has been changed

## sudo apt install inotify-tools

mkdir -p temp/NewFolder
inotify wait -m temp/NewFolder # this will just notify us whenever something happens to that file