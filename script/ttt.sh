#!/usr/bin/env bash
# 存储所有行的内容
last_title=$(hyprctl workspaces|sed 's/^$/@/'|tr '\n' ' ')
last_title="${last_title:0: -4}"

# Set IFS to '@' to split the string by '@'
IFS='@' read -ra titles <<< "$last_title"

for title in "${titles[@]}"; do
  title=$(sed 's/^ //' <<< "$title")  # remove first space
  workspace=$(echo "$title"|cut -d" " -f4|sed 's/^.//'|sed 's/.$//')
  echo $workspace
  lastwindtitle=$(sed 's/.*lastwindowtitle: //' <<< "$title")
  echo $lastwindtitle
done

