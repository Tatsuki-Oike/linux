# 1 Linuxのイメージを利用

```sh
cd ./06_ps_jobs
docker build -t my_centos_image .
docker run --rm -it --name centos_container my_centos_image /bin/bash
docker image rm my_centos_image
```

<br>

# 2 psとjobs

```bash
ps
jobs
```

<br>

# 3 fgとbg

```bash
python time_calc.py > output.txt &
cat output.txt | tail -n 3
jobs
fg %1
```

Ctrl+zで停止

```bash
bg %1
cat output.txt | tail -n 3
jobs
kill %1
jobs
```

<br>

# 4 psとjobの違い

```bash
python time_sleep.py | cat | tail -n 1 &
ps
jobs
kill 26
ps
kill %1
```

```bash
python mem_cpu.py &
ps -o pid,comm,%cpu,%mem --sort=-%cpu
```