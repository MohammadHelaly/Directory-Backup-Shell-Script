>Prerequisites:
-make sure you have the make package installed on ubuntu.
-make sure you already have a source directory.
-you do not need to create a destination, the code will create it.

>Project directory contents:
-dir: source directory.
-backupd.sh: bash script code.
-makefile: runs the bash script and provides the arguments.
-directory-info files: used to check if backup directories are up to date.

>Code explaination:
-the code creates a destination backup directory.
-the source directory info is saved into a file.
-the source directory is copied into anew directory with name of current date.
-the code then enters an infinite loop with a delay deterined by the user.
-after the delay it sved the source directory info into another file.
-the two files are then compared
-if they are different a new backup directory is created with name current date.
-if the number of backup directories exceeds the limit specified by the user the oldest backup directory will be deleted.
