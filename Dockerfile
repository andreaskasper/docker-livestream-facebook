FROM debian

RUN \
    apt-get -y -q update \
    && apt-get -y install ffmpeg stunnel4 \
    && mkdir /etc/stunnel/conf.d \
    && apt-get -y -q clean

ARG INPUT=http://distribution.bbb3d.renderfarming.net/video/mp4/bbb_sunflower_1080p_30fps_normal.mp4
ENV INPUT="${INPUT}"

ARG FACEBOOK_KEY=test
ENV FACEBOOK_KEY="${FACEBOOK_KEY}"


COPY stunnel.conf /etc/stunnel/stunnel.conf
COPY fb.conf /etc/stunnel/conf.d/fb.conf
COPY entrypoint.sh /entrypoint.sh
COPY start.sh /start.sh

RUN \
    chmod +x /entrypoint.sh \
    && chmod +x /start.sh

#EXPOSE 1935 

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/start.sh"]


#-e STUNNEL_SERVICE=rtmp \
#    -e STUNNEL_ACCEPT=1936 \
#    -e STUNNEL_CONNECT=live-api-s.facebook.com:443 \
#    -p 127.0.0.1:1936:1936 \
#    dweomer/stunnel
