# 1 Linuxのイメージを利用

```sh
cd ./02_in_out
docker build -t my_centos_image .
docker run --rm -it --name centos_container my_centos_image /bin/bash
docker image rm my_centos_image
```

<br>

# 2 簡単な表示 (echo cat)

```bash
echo Hello, World
echo $HOME
cat hello.txt
```

<br>

# 3 標準出力、標準エラー出力

## 3.1 標準出力

```bash
echo "この表示をファイルにしたいな" > out1.txt
cat out1.txt
ls -l
ls -l > out2.txt
cat out2.txt
```

## 3.2 標準出力と標準エラー出力

```bash
/bin/bash sample.sh
/bin/bash sample.sh > out3.txt
cat out3.txt
/bin/bash sample.sh 2> out4.txt
cat out4.txt
/bin/bash sample.sh > out5.txt 2> out6.txt
cat out5.txt
cat out6.txt
/bin/bash sample.sh > out7.txt 2>&1
cat out7.txt
```

## 3.3 上書き

```bash
echo 123 > out8.txt
echo 456 > out8.txt
cat out8.txt
echo 789 >> out8.txt
cat out8.txt
```

## 3.4 /dev/null

```bash
/bin/bash sample.sh > /dev/null
/bin/bash sample.sh 2> /dev/null
```

<br>

# 4 パイプライン

```bash
ls -l
ls -l | head -n 3
ls -l | tail -n 3
ls -l | sort -k 9
ls -l | sort -k 9 | head -n 5
```