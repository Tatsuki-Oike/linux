# 1 Linuxのイメージを利用

```sh
cd ./01_file_folder
docker build -t my_centos_image .
docker run --rm -it --name centos_container my_centos_image /bin/bash
docker image rm my_centos_image
```

<br>

# 2 基本コマンド

## 2.1 基本コマンド

```bash
pwd
ls
cd folder1
pwd
cd /home/myuser
```

## 2.2 特殊なパス

```bash
ls .
ls ~
ls ../
ls ./folder1
ls ~/folder1
ls ../myuser
```

## 2.3 オプション

```bash
ls -l
ls -a
ls -F
```

<br>

# 3 フォルダとファイル操作

## 3.1 フォルダ作成

```bash
mkdir folder4
ls
mkdir folder5/folder5_1
mkdir -p folder5/folder5_1
ls folder5
```

## 3.2 ファイル作成

```bash
touch file7
touch file8 file9
touch folder5/file10
ls -F
ls -F folder5
```

## 3.3 展開表記

```bash
touch file{10..13}
touch file_{a,d}
ls -F
```

## 3.4 ファイル消去

```bash
rm file7
rm file8 file9
rm file{10..13}
rm file_{a,d}
rm folder5/file10
ls -F
```

## 3.5 フォルダの消去

```bash
rmdir folder4
rm -r folder5
ls
```

<br>

# 4 コピーと移動

## 4.1 コピー

```bash
cp folder1/file1.txt folder2/file1.txt
ls -F folder2
cp folder1 folder4
cp -r folder1 folder4
ls -F folder4
```

## 4.2 移動、ファイル名変更

```bash
mv folder1/file1.txt folder3/file1.txt
ls -F folder1 folder3
mv folder3/file1.txt folder3/file7.txt
ls -F folder3
```