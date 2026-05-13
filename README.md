# Department File Organization Script

## Workplace Scenario

In this assignment, I am acting as a junior systems administrator responsible for helping organize department files on a Linux server. Different departments such as HR, Sales, Finance, and IT have files that need to be created, organized, backed up, renamed, and documented. This script helps automate those tasks and creates a report showing what happened.

## Description of the Script

This Bash script performs several file management tasks. It creates department folders, creates sample department files, writes content into those files, copies files to a backup location, renames a finance file, removes temporary files, lists folder contents, and creates a final report.

The final report includes:

- The date and time the script ran
- The directories created
- The files copied
- The file renamed
- The temporary files removed

## Linux Commands Used

### `mkdir`

The `mkdir` command creates directories.

I used `mkdir -p` to create department folders, backup folders, report folders, and temporary folders. The `-p` flag is useful because it prevents errors if the folder already exists.

### `touch`

The `touch` command creates empty files.

I used `touch` to create sample files for HR, Sales, Finance, IT, and a temporary notes file.

### `echo`

The `echo` command prints text to the terminal or writes text into files.

I used `echo` to display status messages and to write content into the sample files and final report.

### `cp`

The `cp` command copies files or directories.

I used `cp -v` to copy department files into the backup directory. I also used `cp -rv` to copy the full logs folder into the backup folder.

### `mv`

The `mv` command moves or renames files.

I used `mv -v` to rename the finance file from `financial_statements.txt` to `final_financial_statements.txt`.

### `rm`

The `rm` command removes files or directories.

I used `rm -v` to remove a temporary file and `rm -rv` to remove the temporary folder.

### `ls`

The `ls` command lists files and folders.

I used `ls -al` to display detailed information about the main logs folder and backup folder.

### `pwd`

The `pwd` command shows the current working directory.

I used `pwd` to show where the script was being run from.

### `date`

The `date` command displays the current date and time.

I used `date` to add the script run time to the final report.

### `cat`

The `cat` command displays the contents of a file.

I used `cat` to display the final report in the terminal after the script finished.

### `chmod`

The `chmod` command changes file permissions.

I used `chmod +x` to make the script executable.

## Useful Flags Used

The script uses these command flags:

- `mkdir -p`
- `cp -v`
- `cp -r`
- `cp -rv`
- `mv -v`
- `rm -v`
- `rm -r`
- `rm -rv`
- `ls -a`
- `ls -l`
- `chmod +x`

## How to Run the Script

Make sure you are inside the project repo folder.

Make the script executable:

```bash
chmod +x organize_departments.sh
```

Run the script:

```bash
./organize_departments.sh
```

View the final report:

```bash
cat "$HOME/Documents/TheoWAF/reports/final_report.txt"
```

## Git Commands Used to Submit

Check the repo status:

```bash
git status
```

Add the updated files:

```bash
git add README.md organize_departments.sh
```

Commit the changes:

```bash
git commit -m "Fix script formatting and complete README documentation"
```

Push to GitHub:

```bash
git push origin main
```