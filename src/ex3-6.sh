#!/bin/bash

read -p "폴더 이름을 입력하세요: " folder_name
read -p "파일들의 이름을 입력하세요 (공백으로 구분): " file_names


if [ ! -d "$folder_name" ]; then
  mkdir "$folder_name"
  echo "폴더 '$folder_name'를 생성했습니다."
else
  echo "폴더 '$folder_name'가 이미 존재합니다."
fi


IFS=' ' read -r -a files <<< "$file_names"
for file in "${files[@]}"; do
  touch "$folder_name/$file"
  echo "$file" > "$folder_name/$file"
done


tar -cvf "$folder_name/files.tar" "$folder_name"/*


new_folder_name="extracted_$folder_name"
mkdir "$new_folder_name"
tar -xvf "$folder_name/files.tar" -C "$new_folder_name"

echo "압축을 해제한 새로운 폴더: '$new_folder_name'"

