# 1 Linuxのイメージを利用

```sh
cd ./03_search
docker build -t my_centos_image .
docker run --rm -it --name centos_container my_centos_image /bin/bash
docker image rm my_centos_image
```

<br>

# 2 findとワイルドカード

```bash
ls -F
find . -name file1.txt
find . -type d | head -n 5
find . -type f | head -n 5
find . -name "*.txt"
find . -name "file?.sh"
find . -name "file[1-3].sh"
find . -name "file[^1-3].sh"
find . -name "file[!1-3].sh"
```

<br>

# 3 grepと正規表現と拡張正規表現

## 3.1 grepの基礎

```bash
ls -l
ls -l > sample.txt
grep file sample.txt
ls -l | grep file
grep -n file sample.txt
grep -i file sample.txt
```

## 3.2 正規表現で検索

```bash
grep '^d' sample.txt
grep 'sh$' sample.txt
grep 'folder0*1' sample.txt
grep 'folder[ab]*2' sample.txt
```

## 3.3 拡張正規表現で検索

```bash
grep -E 'folder0+1' sample.txt
grep -E 'folder0{1,2}1' sample.txt
grep -E 'folder0{2}1' sample.txt
grep -E 'folder0{2,}1' sample.txt
grep -E 'folder(00){2,}1' sample.txt
grep -E 'folder(00|1)' sample.txt
```

## 3.4 findとgrepの組み合わせ

```bash
find . -type d | grep -E 'folder(00|1)'
```