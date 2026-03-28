#!/bin/bash

# Script 2: Python Package Checker

PACKAGE="python3"

echo "Checking Python installation..."

if command -v $PACKAGE &> /dev/null
then
  echo "$PACKAGE is installed"
  $PACKAGE --version
else
  echo "$PACKAGE is NOT installed"
fi

case $PACKAGE in
  python3) echo "Python: open-source language used in AI, web, and automation"
  ;;
esac