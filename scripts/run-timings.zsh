#!/bin/zsh

for filename in $(find src/java -iname 'Problem???.java'); do
  NUMBER=$(echo $filename | \grep -o '[0-9]\{3\}')
  TIME=$(scripts/run-problem.zsh $NUMBER 2>&1 >/dev/null)
  echo "Processing $NUMBER ($TIME)"
  sed -i "/public class/i\\\\n\/\/ timing: $TIME" src/java/Problem$NUMBER.java 
done