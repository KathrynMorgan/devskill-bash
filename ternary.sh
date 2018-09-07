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

# Ternary check on cmd arg $1
[[ $arg_SWITCH == "0" ]] && run_log 0 "true" || run_log 0 "false"

# Log exit & exit
run_log 0 "$exit_MSG" && exit 0
