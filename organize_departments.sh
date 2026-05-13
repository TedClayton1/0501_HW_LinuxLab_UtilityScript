#!/bin/bash

# Define directories
BASE_DIR="/c/Users/Admin/Documents/TheoWAF/logs"
BACKUP_DIR="/c/Users/Admin/Documents/TheoWAF/logs_backup"
REPORT_DIR="/c/Users/Admin/Documents/TheoWAF/reports"
TEMP_DIR="/c/Users/Admin/Documents/TheoWAF/temp_files"

REPORT_FILE="$REPORT_DIR/final_report.txt"

echo "Starting department file organization script right now..."
echo "The current working directory:"
pwd

# Create directories
mkdir -p "$BASE_DIR/hr"
mkdir -p "$BASE_DIR/sales"
mkdir -p "$BASE_DIR/finance"
mkdir -p "$BASE_DIR/it"
mkdir -p "$BACKUP_DIR"
mkdir -p "$REPORT_DIR"
mkdir -p "$TEMP_DIR"

# Create sample files
touch "$BASE_DIR/hr/employee_promotions.txt"
touch "$BASE_DIR/sales/sales_reports.txt"
touch "$BASE_DIR/finance/financial_statements.txt"
touch "$BASE_DIR/it/technical_documents.txt"
touch "$TEMP_DIR/temp_notes.txt"

# Write content into files
echo "HR employee promotions file created for HR department." > "$BASE_DIR/hr/employee_promotions.txt"
echo "Sales reports file created for the sales department." > "$BASE_DIR/sales/sales_reports.txt"
echo "Financial statements file created for the finance department." > "$BASE_DIR/finance/financial_statements.txt"
echo "Technical documents file created for the IT department." > "$BASE_DIR/it/technical_documents.txt"
echo "Temporary notes file created during organization." > "$TEMP_DIR/temp_notes.txt"

# Copy files to backup directory
echo "Copying files to backup directory..."
cp -v "$BASE_DIR/hr/employee_promotions.txt" "$BACKUP_DIR/"
cp -v "$BASE_DIR/sales/sales_reports.txt" "$BACKUP_DIR/"
cp -v "$BASE_DIR/finance/financial_statements.txt" "$BACKUP_DIR/"
cp -v "$BASE_DIR/it/technical_documents.txt" "$BACKUP_DIR/"

# Copy full folder structure
cp -rv "$BASE_DIR" "$BACKUP_DIR/full_logs_backup"

# Move / rename a file
echo "Renaming finance file..."
mv -v "$BASE_DIR/finance/financial_statements.txt" "$BASE_DIR/finance/final_financial_statements.txt"

# Remove temporary file and folder
echo "Removing temporary files and folders..."
rm -v "$TEMP_DIR/temp_notes.txt"
rm -rv "$TEMP_DIR"

# Display folder contents
echo "Displaying organized folder contents..."
ls -al "$BASE_DIR"
ls -al "$BACKUP_DIR"

# Create final report
echo "Department File Organization Report" > "$REPORT_FILE"
echo "-----------------------------------" >> "$REPORT_FILE"
echo "Script ran on:" >> "$REPORT_FILE"
date >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "Directories created:" >> "$REPORT_FILE"
echo "- $BASE_DIR/hr" >> "$REPORT_FILE"
echo "- $BASE_DIR/sales" >> "$REPORT_FILE"
echo "- $BASE_DIR/finance" >> "$REPORT_FILE"
echo "- $BASE_DIR/it" >> "$REPORT_FILE"
echo "- $BACKUP_DIR" >> "$REPORT_FILE"
echo "- $REPORT_DIR" >> "$REPORT_FILE"
echo "- $TEMP_DIR" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "Files copied:" >> "$REPORT_FILE"
echo "- employee_promotions.txt copied to $BACKUP_DIR" >> "$REPORT_FILE"
echo "- sales_reports.txt copied to $BACKUP_DIR" >> "$REPORT_FILE"
echo "- financial_statements.txt copied to $BACKUP_DIR" >> "$REPORT_FILE"
echo "- technical_documents.txt copied to $BACKUP_DIR" >> "$REPORT_FILE"
echo "- Full logs folder copied to $BACKUP_DIR/full_logs_backup" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "Files moved or renamed:" >> "$REPORT_FILE"
echo "- financial_statements.txt renamed to final_financial_statements.txt" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "Temporary files removed:" >> "$REPORT_FILE"
echo "- $TEMP_DIR/temp_notes.txt" >> "$REPORT_FILE"
echo "- $TEMP_DIR" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "Final report completed."

# Display final report
cat "$REPORT_FILE"