FROM centos:7

# ディレクトリを作成してsudo設定を追加
RUN useradd -ms /bin/bash myuser && \
    mkdir -p /etc/sudoers.d && \
    echo "myuser ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/myuser && \
    usermod -aG wheel myuser

# ユーザー指定
USER myuser

# ディレクトリ指定
WORKDIR /home/myuser

# .shファイル実行
COPY src/ /home/myuser/

# 環境変数設定
ENV PS1="\w\$ "

