#!/bin/bash
# Ternary example
# Usage:
#        ./ternary.sh 0
# or
#        ./ternary.sh 1

# Set Variables
arg_SWITCH="$1"
exit_MSG="Script Complete, Exiting now!"

# Logging Function
run_log () {
  if [[ $1 == "0" ]]; then
	  echo "INFO: $2"
  elif [[ $1 == "1" ]]; then
	  echo "ERROR: $2"
  fi
}

# Run apt update
apt-get update -y 2>&1 >/dev/null

# Ternary check on apt update exit code
[[ $? == "0" ]] && run_log 0 "Apt updated successfully!" || run_log 1 "Apt Failed to update!"

# Log exit & exit
run_log 0 "$exit_MSG" && exit
