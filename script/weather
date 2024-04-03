#!/usr/bin/env bash
a=$(curl -Ss 'https://wttr.in?&T&Q'| awk 'NR==1' | awk '{print $NF}')
b=$(curl -Ss 'https://wttr.in?&T&Q'| awk 'NR==2' | awk '{print $(NF-1)" "$NF}')
c=$(curl -Ss 'https://wttr.in?&T&Q'| awk 'NR==3' | awk '{print $(NF-2)" "$(NF-1)" "$NF}')
d=$(curl -Ss 'https://wttr.in?&T&Q'| awk 'NR==4' | awk '{print $(NF-1)" "$NF}')
e=$(curl -Ss 'https://wttr.in?&T&Q'| awk 'NR==5' | awk '{print $(NF-1)" "$NF}')
echo $a", "$b", "$c", "$d", "$e
