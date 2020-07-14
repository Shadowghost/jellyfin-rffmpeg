FROM jellyfin/jellyfin:latest

RUN apt update && \
    apt install -y openssh-client python3-yaml wget &&\
    wget https://github.com/joshuaboniface/rffmpeg/blob/master/rffmpeg.py -o /usr/local/bin/rffmpeg && \
    chmod +x /usr/local/bin/rffmpeg && \
    apt purge wget -y && \
    rm -rf /var/lib/apt/lists/* && \
    apt autoremove --purge -y && \
    apt clean && \
    mkdir /etc/rffmpeg

ENTRYPOINT "./jellyfin/jellyfin"
