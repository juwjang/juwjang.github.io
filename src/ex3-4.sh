#!/bin/bash

while true; do
  read -p "리눅스가 재미있나요? (yes/no): " answer


  case "$answer" in
    "yes"|"y"|"yesyesyes"|"Y")
      echo "yes"
      ;;
    "no"|"n"|"nonono"|"N"|"NO")
      echo "no"
      ;;
    *)
      echo "yes or no로 입력해 주세요."
      exit 0
      ;;
  esac
done

