#! /bin/bash

#curl is good for downloading things

url="http://www.ovh.net/files/1Mio.dat"
curl ${url} -O # download the file as is, inheritiing the original name of the file

curl ${url} -o NewFileDownload # -o is to change the output file name

curl ${url} > outputfile

# you can also download headers to check if a file is correct

curl -I ${url} > outputfile # this will just do the header 