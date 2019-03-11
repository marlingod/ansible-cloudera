for i in $(cat kts.txt);
do
scp ~/.ssh/id_rsa.pub root@$i:/root
ssh -i ~/.ssh/id_rsa -o StrictHostKeyChecking=no -t root@$i bash -c "'
touch ~/.ssh/authorized_keys
cat /root/id_rsa.pub >> /root/.ssh/authorized_keys
'";
done

