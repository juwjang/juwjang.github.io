#!/bin/bash

IFS=',' read -p ": " num1 num2 operator

if [[ "$operator" == "+" ]]; then
  result=$((num1 + num2))
  operation="addition"
elif [[ "$operator" == "-" ]]; then
  result=$((num1 - num2))
  operation="subtraction"
else
  echo "+,-만 입력 가능"
  exit 1
fi

echo "계산결과: $result"

