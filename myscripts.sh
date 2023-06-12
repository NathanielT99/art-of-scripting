total 4
drwxr-xr-x 2 nxt220001 applied-genomics  10 Jun  6 11:05 foo
-rw-r--r-- 1 nxt220001 applied-genomics   0 Jun  6 11:29 myscripts.sh
-rw-r--r-- 1 nxt220001 applied-genomics 133 Jun  6 11:10 testfile
set -uex
grep -o -w 'gene' SGD_features.tab | wc -l

testfile
