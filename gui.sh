export myIP=$(ip route get 1 | awk '{print $NF;exit}')
echo $myIP
npm start
tail -f /dev/null
