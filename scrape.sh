#! /bin/bash
wget -O testing.txt https://in.finance.yahoo.com/q?s=$1;
#grep \<span\ id\=\"yfs\_l84\_ testing.txt | grep -Po '<span id="yfs_l84_sbin.bo">\K.*?(?=</span>)' > values.txt
grep \<span\ id\=\"yfs\_l84\_ testing.txt | grep -i -Po '<span id="yfs_l84_'$1'">\K.*?(?=</span>)' > values.txt
