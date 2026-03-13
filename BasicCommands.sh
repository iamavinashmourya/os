#!/bin/bash

# Basic Linux Commands

# 1. pwd - Print Working Directory
echo "Current directory:"
pwd

# 2. ls - List files and directories
echo "Files in current directory:"
ls

# 3. cd - Change Directory
echo "Changing to home directory..."
cd ~
pwd

# 4. mkdir - Make Directory
echo "Creating a new directory 'test_dir'..."
mkdir test_dir
ls

# 5. touch - Create an empty file
echo "Creating an empty file 'test_file.txt'..."
touch test_file.txt
ls

# 6. cp - Copy files
echo "Copying 'test_file.txt' to 'copy_file.txt'..."
cp test_file.txt copy_file.txt
ls

# 7. mv - Move or rename files
echo "Renaming 'copy_file.txt' to 'renamed_file.txt'..."
mv copy_file.txt renamed_file.txt
ls

# 8. rm - Remove files
echo "Removing 'renamed_file.txt'..."
rm renamed_file.txt
ls

# 9. rmdir - Remove empty directories
echo "Removing 'test_dir'..."
rmdir test_dir
ls

# 10. cat - Display file contents
echo "Creating a file with content..."
echo "Hello, Linux!" > hello.txt
echo "Contents of hello.txt:"
cat hello.txt

# 11. grep - Search for patterns in files
echo "Searching for 'Linux' in hello.txt:"
grep "Linux" hello.txt

# 12. chmod - Change file permissions
echo "Changing permissions of hello.txt to 755..."
chmod 755 hello.txt
ls -l hello.txt

# 13. ps - Process status
echo "Current processes:"
ps

# 14. kill - Terminate processes (example with a simple command)
echo "Starting a background process..."
sleep 10 &
PID=$!
echo "Process ID: $PID"
echo "Killing the process..."
kill $PID

# 15. df - Disk free space
echo "Disk usage:"
df -h

# 16. du - Disk usage of files/directories
echo "Disk usage of current directory:"
du -h

# 17. top - Display system processes (run in background, but we'll just mention it)
echo "To monitor processes, use: top"

# 18. history - Command history
echo "Command history:"
history | tail -10

# 19. man - Manual pages
echo "To get help on a command, use: man <command>"

# 20. which - Locate a command
echo "Location of 'ls' command:"
which ls

# Clean up
rm hello.txt
echo "Cleanup complete."
