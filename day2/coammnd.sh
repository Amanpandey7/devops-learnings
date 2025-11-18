linux permission patterns
-rwxr-x---
 |  |  | 
 |  |  └── Others (O)
 |  └──── Group (G)
 └─────── User/Owner (U)

practice commands:
mkdir day2_permissions
cd day2_permissions
touch testfile
chmod 640 testfile
ls -l testfile
chown $USER:$USER testfile
umask


new linux command:
id
umask
ps aux | head
kill -l

Python exercise:
echo "Error: Something failed" > app.log
echo "Info: Starting system" >> app.log
echo "Warning: High memory usage" >> app.log

nano log_filter.py

Python code:

import argparse

parser = argparse.ArgumentParser(description="Filter logs by keyword")
parser.add_argument("filename", help="Log file to scan")
parser.add_argument("keyword", help="Keyword to search for")
args = parser.parse_args()

with open(args.filename, "r") as f:
    for line in f:
        if args.keyword.lower() in line.lower():
            print(line.strip())

python3 log_filter.py app.log error

$1 $2 $@ command in shell script

| Symbol           | Meaning                                                                |
| ---------------- | ---------------------------------------------------------------------- |
| `$1`, `$2`, `$3` | Positional arguments (first, second, third, etc.) passed to the script |
| `$@`             | All arguments as separate words                                        |
| `$#`             | Number of arguments                                                    |
| `$0`             | Script name                                                            |
