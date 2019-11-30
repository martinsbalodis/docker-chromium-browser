FROM ubuntu:18.04

ENV DISPLAY=":0" XAUTHORITY=/xauthority/.docker.xauth

RUN apt-get update && \
DEBIAN_FRONTEND=noninteractive apt-get -y install chromium-browser && \
apt-get clean && \
apt-get autoclean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
rm -rf /var/lib/apt/lists/*

CMD sleep 5 && /usr/bin/chromium-browser --no-sandbox --disable-dev-shm-usage --disable-background-networking --disable-default-apps --disable-hang-monitor --disable-infobars --disable-popup-blocking --disable-prompt-on-repost --disable-sync --disable-web-resources --enable-logging --log-level=0 --no-first-run --password-store=basic --safebrowsing-disable-auto-update --use-mock-keychain --disable-gpu --disable-preconnect --disable-translate --dns-prefetch-disable --no-pings --start-maximized --mute-audio
