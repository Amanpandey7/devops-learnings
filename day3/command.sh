git config command:
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
git config --global init.defaultBranch main
git config --list

initialization git:
mkdir ~/devops-practice
cd ~/devops-practice
git init

cp ~/path/to/day2.sh .
git add day2.sh
git commit -m "Add Day 2 automation script"

git status
git log --oneline

git checkout -b feature/backup-logging
echo "echo 'Backup completed successfully'" >> backup.sh
git add backup.sh
git commit -m "Add logging to backup script"

git checkout main
git merge feature/backup-logging

git remote add origin https://github.com/<yourusername>/devops-practice.git
git push -u origin main

#!/bin/bash
git add .
git commit -m "Auto-sync on $(date)"
git push origin main

git log --oneline --graph --all
It visually shows branch structure, merges, and commit relationships — super useful in complex repos.

git reset --soft HEAD~1
--soft keeps your changes in working directory and staging area.
HEAD~1 means “one commit before the latest.”