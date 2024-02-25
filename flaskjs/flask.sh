#!/usr/bin/env bash
# ----------------------------------
# Start the flask app in dev (debug) mode
# Args:
#   -d: server directory (not used, but kept for consistency with next.sh)
#   -h: hostname
#   -p: port
# ----------------------------------

# parse command-line arguments
# getopts for short options
while getopts "h:p:d:" opt; do
  case $opt in
    h) host=$OPTARG ;;
    p) port=$OPTARG ;;
    d) ;; # not used
    \?) echo "Invalid option -$OPTARG" >&2; exit 1 ;;
  esac
done

# Run flask with the port from the .env file
flask --app="$FLASKJS_SDIR.$FLASK_APP" run --debug --host=$host --port=$port