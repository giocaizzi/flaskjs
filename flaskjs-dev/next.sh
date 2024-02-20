#!/usr/bin/env bash
# ----------------------------------
# Start the next app in dev mode
# Args:
#   -d: client directory
#   -h: hostname
#   -p: port
# ----------------------------------

# parse command-line arguments
# getopts for short options
while getopts "h:p:d:" opt; do
  case $opt in
    h) host=$OPTARG ;;
    p) port=$OPTARG ;;
    d) cdir=$OPTARG ;;
    \?) echo "Invalid option -$OPTARG" >&2; exit 1 ;;
  esac
done
npm --prefix "./$cdir" run dev -- -p $port -H $host 