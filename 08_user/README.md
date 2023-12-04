# 1 Linuxのイメージを利用

```sh
cd ./08_user
docker build -t my_centos_image .
docker run --rm -it --name centos_container my_centos_image /bin/bash
docker image rm my_centos_image
```

<br>

# 2 スーパーユーザーの権限 (sudo)

```bash
ls -l sample.py
chmod 000 sample.py
sudo chmod 000 sample.py
```

```bash
cat sample.py
python sample.py
echo "print('Hello2')" >> sample.py
```

```bash
sudo cat sample.py
sudo python sample.py
sudo bash -c 'echo "print('Hello2')" >> sample.py'
sudo cat sample.py
```

<br>

# 3 ユーザーとグループ

## 3.1 新しいユーザーの追加


```bash
whoami
sudo useradd sampleuser
sudo passwd sampleuser
cat /etc/passwd | grep user
groups myuser
groups sampleuser
su - sampleuser
```

## 3.2 sudoの実行権限の確認

```bash
whoami
sudo ls /etc/sudoers.d
exit
```

<br>

# 4 sudo権限の付与

## 4.1 sudores.dによるsudo権限の付与

```bash
whoami
sudo ls /etc/sudoers.d
sudo cat /etc/sudoers.d/myuser
```

```bash
sudo bash -c 'echo "sampleuser ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/sampleuser'
sudo ls /etc/sudoers.d
sudo cat /etc/sudoers.d/sampleuser
su - sampleuser
sudo ls /etc/sudoers.d
exit
```

```bash
sudo rm /etc/sudoers.d/sampleuser
su - sampleuser
sudo ls /etc/sudoers.d
exit
```

## 4.2 wheelによるsudo権限の追加

```bash
groups myuser
groups sampleuser
```

```bash
sudo usermod -aG wheel sampleuser
groups sampleuser
su - sampleuser
sudo ls /etc/sudoers.d
exit
```