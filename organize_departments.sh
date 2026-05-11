#!/bin/bash

#Define directories
BASE_DIR="/c/Users/Admin/Documents/TheoWAF/logs"
BACKUP_DIR="/c/Users/Admin/Documents/TheoWAF/logs_backup"
REPORT_DIR"/c/Users/Admin/Documents/TheoWAF/reports"
TEMP_DIR="/c/Users/Admin/Documents/TheoWAF/temp_files"

REPORT_FILE="$REPORT_DIR/final_report.txt"

echo "Starting department file organization script right now..."
echo "The current working directory:"
pwd

# Creating the directories
mkdir -p "$BASE_DIR/hr"
mkdir -p "$BASE_DIR/sales"
mkdir -p "$BASE_DIR/finance"
mkdir -p "$BASE_DIR/it"
mkdir -p "$BACKUP_DIR"
mkdir -p "$REPORT_DIR"
mkdir -p "$TEMP_DIR"

# Creating sample files
touch "$BASE_DIR/hr/employee_promotions.txt"
touch "$BASE_DIR/sales/sales_reports.txt"
touch "$BASE_DIR/finance/financial_statements.txt"
touch "$BASE_DIR/it/technical_documents.txt"

# Print messages to terminal and write content into file(s)
echo "HR employee promotions file created for HR department." > "$BASE_DIR/hr/employee_promotions.txt"
echo "Sales reports file also created for the sales department." > "$BASE_DIR/sales/sales_reports.txt"
echo "Financial statements file created for the finance dept." > "$BASE_DIR/finance/financial_statements.txt"
echo "Technical documents file created for the IT department." > "$BASE_DIR/it/technical_documents.txt"

