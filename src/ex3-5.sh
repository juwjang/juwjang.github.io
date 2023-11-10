#!/bin/bash
run_linux_command() {
  echo "프로그램을 시작합니다."
  echo "함수 안으로 들어 왔음"
  eval "$@"
}



read -p "함수 명령어 입력 (기본값: ls): " user_command



user_command="ls $user_command"


run_linux_command "$user_command"

echo "프로그램을 종료합니다."

