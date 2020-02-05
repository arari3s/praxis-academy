for pid in $(ps -aux|grep firefox|awk '{print $2}');do 
kill $pid;
done
