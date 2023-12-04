# 1 Linuxのイメージを利用

```sh
cd ./07_shell
docker build -t my_centos_image .
docker run --rm -it --name centos_container my_centos_image /bin/bash
docker image rm my_centos_image
```

<br>

# 2 Shell scriptの実行方法

```bash
ls
/bin/bash 1_run.sh
bash 1_run.sh
source 1_run.sh
cd ./myuser
. 1_run.sh
cd ./myuser
```

<br>

# 3 Shell scriptの基礎

```bash
bash 2_args.sh a1 b2 c3
bash 3_if.sh Apple Orange 5
bash 4_for.sh 5 6 7 8
bash 5_case.sh
bash 6_while.sh
bash 7_function.sh
```