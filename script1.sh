#!/bin/bash
# Script 1: System Identity Report
# Author: Navneet Parashar (24BCG10125)
# Course: Open Source Software

# --- Variables and Data Gathering
STUDENT_NAME="Navneet Parashar"
SOFTWARE_CHOICE="Python"
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep "PRETTY_NAME" | cut -d'"' -f2)
CURRENT_DATE=$(date)

# --- Display Output
echo "=========================================="
echo "      $SOFTWARE_CHOICE Open Source Audit"
echo "=========================================="
echo "Student Name : $STUDENT_NAME"
echo "Distro       : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Uptime       : $UPTIME"
echo "Date/Time    : $CURRENT_DATE"
echo "------------------------------------------"
echo "License Note : This OS is covered by the GNU GPL License."
echo "=========================================="
