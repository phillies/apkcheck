FROM openjdk:17-slim-bullseye

WORKDIR /root

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y wget php-cli php-json git && \
    rm -rf /var/lib/apt/lists/* && \
    git clone https://gitlab.com/IzzyOnDroid/repo.git && \
    mkdir -p repo/lib/radar/tool && \
    wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.6.1.jar && \
    wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool && \
    chmod +x apktool* && \
    ln -s apktool_2.6.1.jar apktool.jar && \
    mv apktool* repo/lib/radar/tool/

COPY scan.sh /root/scan.sh

CMD ["/root/scan.sh"]

