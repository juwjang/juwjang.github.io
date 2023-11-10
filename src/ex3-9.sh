#!/bin/bash

database_file="DB.txt"

if [ ! -e "$database_file" ]; then
  echo "DB.txt 파일이 존재하지 않습니다. 프로그램을 종료합니다."
  exit 1
fi

while true; do
  read -p "검색할 팀원의 이름 또는 전화번호 일부를 입력하세요 (끝내려면 'exit' 입력): " search_input

  if [ "$search_input" == "exit" ]; then
    echo "프로그램을 종료합니다."
    break
  fi

  # 이름 또는 전화번호의 일부로 검색
  search_result=$(grep -i "$search_input" "$database_file")

  if [ -z "$search_result" ]; then
    echo "입력한 정보와 일치하는 팀원이 없습니다."
  else
    echo "검색 결과: $search_result"
  fi
done

