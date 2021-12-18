for clovek in $(cat /etc/group | grep "^sh:" | cut -d: -f4 | tr "," " ")
do
     echo "$clovek"
     echo "tu byl na techto hodinach"
     utmpdump /var/log/wtmp 2> /dev/null | grep $clovek | cut -d"[" -f9 | cut -d"T" -f1 | uniq | tr "\n" " "
     echo ""
done
