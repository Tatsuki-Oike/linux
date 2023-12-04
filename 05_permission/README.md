# 1 Linuxのイメージを利用

```sh
cd ./05_permission
docker build -t my_centos_image .
docker run --rm -it --name centos_container my_centos_image /bin/bash
docker image rm my_centos_image
```

<br>

# 2 ファイルの実行権限

```bash
ls
/bin/ls
ls -l /bin/ls
cat /bin/ls | head -n 1
```

```bash
sudo chmod 000 /bin/ls
cat /bin/ls | head -n 1
ls
sudo chmod 111 /bin/ls
cat /bin/ls | head -n 1
ls
sudo chmod 444 /bin/ls
cat /bin/ls | head -n 1
ls
sudo chmod 555 /bin/ls
cat /bin/ls | head -n 1
ls
```

<br>

# 3 スクリプトファイルの読みと書き

```bash
ls -l
sudo chmod 000 sample.py
cat sample.py
python sample.py
echo "\nprint('Hello2')" >> sample.py
sudo chmod 444 sample.py
cat sample.py
python sample.py
echo "\nprint('Hello3')" >> sample.py
sudo chmod 222 sample.py
cat sample.py
python sample.py
echo "\nprint('Hello4')" >> sample.py
```

<br>

# 4 フォルダの権限

```bash
mkdir sample_folder
ls -l
```

```bash
sudo chmod 111 sample_folder
cd sample_folder
cd ..
touch sample_folder/file2
ls sample_folder
```

```bash
sudo chmod 444 sample_folder
cd sample_folder
touch sample_folder/file3
ls sample_folder
```

```bash
sudo chmod 777 sample_folder
cd sample_folder
cd ..
touch sample_folder/file4
ls sample_folder
```
