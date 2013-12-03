# Use a parameter to the script ($1) to specify the directory that must be converted
# Use a parameter to the script ($2) to specify the encoding of the files to convert
for file in $(ls bg1npc/tra/$1/*.tra) 
do
#  echo ${file/tra\/$1\//}
  iconv -f "$2" -t UTF-8  "$file" > "$file"_utf8
done