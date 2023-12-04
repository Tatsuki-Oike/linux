#!/bin/bash

# 引数を持つ関数の定義
greet() {
    local name="$1"  # 引数を変数に代入
    echo -e "----------------------------"
    echo "This is a great function"
    echo -e "Hello, $name!\n"
}

# 関数を呼び出し
greet "Alice"
greet "Bob"
