total 4
drwxr-xr-x 2 nxt220001 applied-genomics  10 Jun  6 11:05 foo
-rw-r--r-- 1 nxt220001 applied-genomics   0 Jun  6 11:29 myscripts.sh
-rw-r--r-- 1 nxt220001 applied-genomics 133 Jun  6 11:10 testfile
set -uex
#Number 1
ls -l | wc -l SGD_features.tab

#Number 2
grep -c 'gene' SGD_features.tab
# grep 'gene' SGD_features.tab | wc -l

#Number 3
grep -c 'ORF' SGD_features.tab

#Number 4
cut -f2 SGD_features.tab |grep -o -w 'ORF' |wc -l

#Number 5
cut -f2 SGD_features.tab | sort | uniq -c | grep -w '50'

#Number 7
cut -f12 SGD_features.tab | grep -o -w 'W' | wc -l
# cut -f12 SGD_features.tab | grep 'W' | wc -l

#Number 8 ^$= empty
cut -f12 SGD_features.tab | grep -c '^$'

#Number 6
# cut -f2 SGD_features.tab |grep -w -c 'Z3_region' |wc -l <- Gives 1 (why?)
cut -f2 SGD_features.tab |grep -w -c 'Z3_region'

#Number 3
#Number 3


testfile