#!/usr/bin/env bash
cd ..
if [ -e keys/$1.crt ] ; then
  echo Certificate already issued. Exiting...
else
  echo Issueing certificate for $1
  . ./vars
  ./build-key --batch $1
fi
