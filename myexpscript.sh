#strict bash
set -uex
NAME=Nathan
#Count lines in file
ls -l | wc -l > nameline.txt
#Report Results
echo "All done $NAME" | wc -c

DATE=$(date "+%A %B %d, %Y")
echo ${DATE}
