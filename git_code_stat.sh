path=$1
author=$2
since=$3
until=$4

git log --since=$since --until=$until --pretty=tformat: --author=$author --numstat $path | awk 'BEGIN {n1=0; n2=0;} {n1+=$1; n2+=$2;} END {printf "%d, %d\n", n1, n2;}'
