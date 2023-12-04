#!/bin/bash

count=1

# countが5未満の間、繰り返し処理を行う
while [ $count -lt 5 ]; do
    echo "カウント: $count"
    ((count++))  # countを1増やす
done

echo "ループ終了"
