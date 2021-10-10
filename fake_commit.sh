#!/bin/bash

types[0]="feat"
types[1]="fix"
types[2]="chore"
types[3]="docs"
types[4]="perf"
types[5]="style"
types[6]="test"
types[7]="refactor"

scopes[0]="survey"
scopes[1]="account"
scopes[2]="translation"

sizeTypes=${#types[@]}
sizeScopes=${#scopes[@]}

for i in {1..60}
do
   indexTypes=$(($RANDOM % $sizeTypes))
   indexScopes=$(($RANDOM % $sizeScopes))
   HASH=`echo $(date +%s)_$i`
   touch "file_$HASH"
   git add "file_$HASH"
   git commit -m "${types[$indexTypes]}(${scopes[$indexScopes]}): Create file_$HASH"
done