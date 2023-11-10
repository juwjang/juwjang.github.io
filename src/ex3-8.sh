#!/bin/bash

database_file="DB.txt"

echo "팀원의 이름과 생일 또는 전화번호를 기록합니다."

if [ -e "$database_file" ]; then
  read -p "DB.txt 파일이 이미 존재합니다. 기존 내용에 추가하시겠습니까? (y/n): " append_choice
  if [ "$append_choice" != "y" ]; then
    echo "기존 파일을 삭제하고 처음부터 작성합니다."
    rm "$database_file"
  fi
fi

while true; do
  read -p "팀원의 이름을 입력하세요 (끝내려면 'exit' 입력): " member_name

  if [ "$member_name" == "exit" ]; then
    echo "프로그램을 종료합니다."
    break
  fi

  # 생일 또는 전화번호 입력 받기
  read -p "팀원의 생일 또는 전화번호를 입력하세요: " member_info
  echo "$member_name: $member_info" >> "$database_file"
  echo "기록이 완료되었습니다."
done

