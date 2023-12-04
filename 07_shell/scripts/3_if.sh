#!/bin/bash

# 1 色々なif文
echo "1 if"

## 1.1 単純なif文
if [ "$1" = "Apple" ]; then
    echo "if Apple"
fi

## 1.2 if else文
if [ "$2" = "Apple" ]; then
    echo "if Apple"
else
    echo "else Orange"
fi

## 1.3 if elif else文

if [ "$2" = "Apple" ]; then
    echo "if Apple"
elif [ "$2" = "Orange" ]; then
    echo "elif Orange"
else
    echo "else Banana"
fi


# 2 整数の評価と複数条件
echo
echo "2 int"

## 2.1 整数の評価
if [ $3 -eq 5 ]; then
    echo "if eq five"
else
    echo "else"
fi

## 2.2 複数条件
if [ $3 -gt 2 ] && [ $3 -lt 8 ]; then
    echo "if 2 < \$3 < 8"
else
    echo "else"
fi