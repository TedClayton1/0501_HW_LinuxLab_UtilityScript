# Department File Organization Script

## Workplace Scenario

In this assignment, I am acting as a junior systems administrator responsible for managing department folders on a Linux server. My task is to create a Bash utility script that organizes incoming department files, creates backup locations, moves and renames selected files, removes temporary files, and generates a final report summarizing the actions performed by the script.

---

## Description of the Bash Script

This Bash script automates the organization of department files by:

- Creating department directories
- Creating sample files for departments
- Writing sample content into files
- Copying important files to a backup location
- Renaming department files
- Removing temporary files and folders
- Displaying directory contents
- Generating a final report with timestamps and actions completed

The script is designed to simulate real-world junior system administration tasks performed on Linux servers.

---

## Defining Directories

The script defines the following directory variables:

- `BASE_DIR`
- `BACKUP_DIR`
- `REPORT_DIR`
- `TEMP_DIR`

The script also defines:

- `REPORT_FILE`

which stores the path to the final report text file.

The script prints status messages to the terminal, including:
- when the script starts
- the current working directory
- progress updates throughout execution

---

## Creating Directories

The script checks whether required directories already exist. If they do not exist, the script creates them using the `mkdir -p` command.

The following directories are created:

```bash
mkdir -p "$BASE_DIR/hr"
mkdir -p "$BASE_DIR/sales"
mkdir -p "$BASE_DIR/finance"
mkdir -p "$BASE_DIR/it"
mkdir -p "$BACKUP_DIR"
mkdir -p "$REPORT_DIR"
mkdir -p "$TEMP_DIR"
```

The `-p` flag allows parent directories to be created if necessary and prevents errors if directories already exist.

---



