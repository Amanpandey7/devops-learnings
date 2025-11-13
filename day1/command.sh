Create a workspace:
mkdir -p ~/devops-learning/day1
cd ~/devops-learning/day1


core commands:
pwd
ls -al
cd
mkdir test-dir
touch file1.txt
echo "hello world" > file1.txt
cat file1.txt
grep "hello" file1.txt
cp file1.txt file2.txt
mv file2.txt renamed.txt
rm renamed.txt


changing permissions:
ls -l
chmod 644 file1.txt
chmod +x file1.txt
sudo chown $USER:$USER file1.txt


processes and system info:
ps aux | grep python
top
htop       # install if needed: sudo apt install htop
free -h
df -h
du -sh *


networking basics:
curl google.com
ping 8.8.8.8
ip addr show
netstat -tulpn     # install: sudo apt install net-tools


shell scritp:
#!/bin/bash

LOG_DIR="/var/log"
ARCHIVE_DIR="$HOME/log-backups"

mkdir -p $ARCHIVE_DIR

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
tar -czf $ARCHIVE_DIR/logs_$TIMESTAMP.tar.gz $LOG_DIR/*.log 2>/dev/null

echo "Logs archived at $ARCHIVE_DIR/logs_$TIMESTAMP.tar.gz"


changing mode of file:
chmod +x log_rotate.sh

show log file:
tail -n 20 -f filename.log
