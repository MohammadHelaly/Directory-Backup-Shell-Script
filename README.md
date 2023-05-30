# Directory Backup Shell Script
 Shell script for automated scheduled backups of a directory, along with a Makefile for easy execution and streamlined commands.

## Directory contents:
  - dir: example source directory.
  - backupdir: example destination directory for backups.
  - backup.sh: bash script code.
  - makefile: runs the bash script and provides the arguments.
  - directory-info files: used to check if backup directories are up to date.

## Dependencies
  - The script will only run on a Linux environment, make sure ypu have a Linux O.S. installed.
  - You must have "make" installed, if you do not, you can install it by typing the following command:
        sudo apt install make
    or    
        ```
        sudo apt install build-essentials
        ```

## Deployment
  - insert the all the files in the parent directory containing the directory you want to backup.
  - make sure you create a dedicated destination directory for the backups in the same parent directory.
  - make the "backup.sh" executable with the following command:
        ```
        chmod +x backup.sh
        ```
  - run the following command:
        ```
        make
        ```
  - or you can run the script and specify the arguments directly
        ```
        ./backup.sh dir backupdir interval maxbackups
        ```
  - the folllowing arguments are entered:
      1. Path of source directory 
      2. Path of destination directory
      3. Time interval between each backup in seconds
      4. Maximum number of backups in destination directory

## Code rundown: 
  - the source directory info is saved into a file.
  - the source directory is copied into a new directory with name of current date.
  - the code then enters an infinite loop with a delay deterined by the user.
  - after the delay it sved the source directory info into another file.
  - the two files are then compared
  - if they are different a new backup directory is created with the current date as its name.
  - if the number of backup directories exceeds the limit specified by the user the oldest backup directory will be deleted.
