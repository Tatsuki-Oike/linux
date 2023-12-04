#!/bin/bash

cd /home/myuser

# フォルダー作成
mkdir folder{1..3}
mkdir folder_sample sample_folder
mkdir folder folder01 folder001 folder0001 folder00001
mkdir folderab2 folderaaab2 folderabaaab2

# ファイル作成
touch folder1/file1.txt
touch file1.txt File1.txt
touch file{1..5}.sh
touch file_{a..c}.txt
