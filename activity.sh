#!/bin/bash

declare -A MONTHS
MONTHS[2024]="01 02 03 04 05 06"
MONTHS[2025]="07 08 09 10 11 12"

for YEAR in 2024 2025; do
  for MONTH in ${MONTHS[$YEAR]}; do

    DATE1="$YEAR-$MONTH-06T11:00:00"
    echo "Work on $DATE1" >> work.txt
    git add .
    GIT_AUTHOR_DATE="$DATE1" GIT_COMMITTER_DATE="$DATE1" \
    git commit -m "project update $YEAR-$MONTH first"

    DATE2="$YEAR-$MONTH-21T17:30:00"
    echo "More work on $DATE2" >> work.txt
    git add .
    GIT_AUTHOR_DATE="$DATE2" GIT_COMMITTER_DATE="$DATE2" \
    git commit -m "project update $YEAR-$MONTH second"

  done
done
