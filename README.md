# linux-directory-size-analyzer
A simple Bash script that displays the size of folders inside a given directory and shows how many top-level folders were found.

## Description

The script uses the `du` command to list the sizes of directories at depth 1,
sorts them by size, and formats the output for readability.

Only valid directories are accepted as input.

## Usage

Make the script executable: `chmod +x folder-usage.sh`
Run the script with a directory as argument: `./directory-size.sh /path/to/directory`

Technologies Used
  - Bash, Linux, du, sort, awk, wc

## Notes
  - The script counts only immediate subdirectories
  - Errors from inaccessible directories are suppressed
  - Output is sorted from largest to smallest
