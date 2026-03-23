#!/bin/sh
# Starts a Netcat listener on the specified TCP port

[ "$#" -ne 1 ] && { echo "usage: $0 {port}" >&2; exit 1; }

[ -n "$1" ] && [ "$1" -eq "$1" ] 2>/dev/null || { echo "$0: invalid port" >&2; exit 1; }

while : ; do
    echo "Welcome to port $1!" | nc -l -p "$1" -k || exit 1
done
