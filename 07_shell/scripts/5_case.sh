#!/bin/bash

echo "どの果物が好きですか？"
echo "1. りんご"
echo "2. バナナ"
echo "3. オレンジ"
echo "4. その他"

# ユーザーからの入力を読み取り
read choice

# case文で選択肢に応じた処理を実行
case $choice in
    1)
        echo "りんごが好きですね！";;
    2)
        echo "バナナが好きですね！";;
    3)
        echo "オレンジが好きですね！";;
    4)
        echo "その他の果物が好きですね！";;
    *)
        echo "無効な選択です。";;
esac
