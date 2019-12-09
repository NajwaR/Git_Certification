!/bin/bash
ref=$(date +%s)
t="y"
echo -en "\r$ms"
while [ "$t" != "q" ]
do
    courant=$(date +%s)
    min=$(((courant-ref)/60))
    sec=$(((courant-ref)%60))
    ms="$min:$sec"
    echo -en "sec\r$ms"
    read -t1 -n1 t 
done
echo
