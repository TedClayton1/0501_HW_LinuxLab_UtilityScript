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

## Creating Sample Files

The script creates sample files for each department using the `touch` command:

```bash
touch "$BASE_DIR/hr/employee_promotions.txt"
touch "$BASE_DIR/sales/sales_reports.txt"
touch "$BASE_DIR/finance/financial_statements.txt"
touch "$BASE_DIR/it/technical_documents.txt"
```

---
## Print messages to the terminal and write content into the file(s)

```bash
echo "HR employee promotions file created for HR department." > "$BASE_DIR/hr/employee_promotions.txt"
echo "Sales reports file also created for the sales department." > "$BASE_DIR/sales/sales_reports.txt"
echo "Financial statements file created for the finance dept." > "$BASE_DIR/finance/financial_statements.txt"
echo "Technical documents file created for the IT department." > "$BASE_DIR/it/technical_documents.txt"
```

## Copy files to backup directory

```bash
echo "Copying files to backup directory..."
cp -v "$BASE_DIR/hr/employee_list.txt" "$BACKUP_DIR/"
cp -v "$BASE_DIR/finance/budget_report.txt" "$BACKUP_DIR/"
cp -v "$BASE_DIR/it/server_inventory.txt" "$BACKUP_DIR/"
cp -v "$BASE_DIR/sales/sales_reports.txt" "$BACKUP_DIR/"
```

# Copy full folder structure

```bash
cp -rv "$BASE_DIR" "$BACKUP_DIR/full_logs_backup"
```




