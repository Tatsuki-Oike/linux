# 1 Linuxのイメージを利用

```sh
cd ./04_var
docker build -t my_centos_image .
docker run --rm -it --name centos_container my_centos_image /bin/bash
docker image rm my_centos_image
```

<br>

# 2 シェル変数と環境変数

```bash
SAMPLE_VAR="Hello"
echo $SAMPLE_VAR
echo "SAMPLE_VARの内容${SAMPLE_VAR}"
```

```bash
set | grep "^SAMPLE"
env | grep "^SAMPLE"
export SAMPLE_ENV="env"
env | grep "^SAMPLE"
```

<br>

# 3 環境変数で設定の変更

```bash
echo $HOME
HOME="/tmp"
cd ~
pwd
HOME="/home/myuser"
cd ~
```

```bash
PS1="\u \H \$ "
PS1="\u \w \$ "
PS1="[\u] \d \$ "
PS1="\w \$ "
```

```bash
echo $PATH
ls /bin | grep ls | head -n 3
ls /bin | grep cat | head -n 3
ls /bin | grep git
git --version
sudo yum install -y git
ls /bin | grep git
git --version
```

<br>

# 4 環境変数の範囲

```bash
ls /bin | grep python
python env.py
```
