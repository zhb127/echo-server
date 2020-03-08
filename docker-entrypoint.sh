#!/bin/sh
set -ex

workdir=$(pwd)
actCode=$1

case "$actCode" in
start)
  exec "./echo-server"
  ;;
stop)
  echo 'app auto stop'
  ;;
*)
  echo "actCode=${actCode} is invalid." >/dev/stderr
  exit 1
  ;;
esac