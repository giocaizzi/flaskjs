#!/bin/bash
# ----------------------------------
# Start the flask app in dev (debug) mode
# Args:
#   -h: hostname. Default: localhost
#   -p: port. Default: 3000
#   -d: debug. Default: true
# ----------------------------------

# parse command-line arguments
# getopts for short options
while getopts "h:p:" opt; do
  case $opt in
    h) host=$OPTARG ;;
    p) port=$OPTARG ;;
    \?) echo "Invalid option -$OPTARG" >&2; exit 1 ;;
  esac
done

# Run flask with the port from the .env file
flask run --debugger --host=$host --port=$port