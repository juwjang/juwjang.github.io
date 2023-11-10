#!/bin/bash

echo "폴더의 이름을 입력하세요:"
read folder_name

if [ ! -d "$folder_name" ]; then
    mkdir "$folder_name"
else
    echo "폴더 '$folder_name'가 이미 존재합니다."
fi

cd "$folder_name"

for i in {1..5}; do
    echo "내용을 채워 넣은 파일 $i" > "file$i.txt"
done

for file in *.txt; do
    folder="${file%.*}"
    mkdir "$folder"
    ln -s "../$file" "$folder/$file"
done

echo "파일을 생성하고 링크를 만들었습니다."
