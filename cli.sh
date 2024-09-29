#!/usr/bin/env sh

if [ $# != 1 ]; then
  echo "Usage: mydbkl-miniapp <name>"
  exit 0
else 
  _name=$1
  _titlecase=$(echo "$_name" | awk '{ for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) tolower(substr($i,2)) } 1')
  _lowercase=$(echo "$_name" | awk '{print tolower($0)}')
fi

rm -rf .temp
mkdir .temp
cd .temp

git clone https://github.com/klauth-project/mydbkl-miniapp.git
cd mydbkl-miniapp

grep -rl __TITLE__ . | xargs sed -i "" -e 's/__TITLE__/'$_titlecase'/g'
grep -rl __NAME__ . | xargs sed -i "" -e 's/__NAME__/'$_lowercase'/g'

find __template__ -type f -name '*miniapp*' | while read file; do
  newfile=$(echo "$file" | sed "s/miniapp/$_lowercase/g")
  mv "$file" "$newfile"
done

mv __template__ ../../$_lowercase
cd ../../
rm -rf .temp

echo 'DONE.'
