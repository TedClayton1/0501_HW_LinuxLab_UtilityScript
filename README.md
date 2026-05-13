# Scenario:
# Junior sys admin that manages several department folders on a Ubuntu server(Linux).
# My responsibility is to craft a utility script that organizes incoming dept files, make
# backup locations, moves selected files and generate a report summarizing what happened.

# Description of Bash Script

# Define Directories -

# This script defines the following directories including : BASE_DIR, BACKUP_DIR, REPORT_DIR AND TEMP_DIR.
# REPORT_FILE lays out the relative path to the final report text file.
# The script then goes on to print "Starting department file organization script right now.." "The curr
# ent working directory and it presents the absolute path where this repo resides on my local machine.

# Creating the directories - 
# The script checks if the directories defined above exist. If they do not exist, it creates them using mkdir -p command. The following directories are to be created as follows: 
# mkdir -p "$BASE_DIR/hr"
# mkdir -p "$BASE_DIR/sales"
# mkdir -p "$BASE_DIR/finance"
# mkdir -p "$BASE_DIR/it"
# mkdir -p "$BACKUP_DIR"
# mkdir -p "$REPORT_DIR"
# mkdir -p "$TEMP_DIR"



