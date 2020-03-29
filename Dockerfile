FROM amphaal/rpgrpz-docker-ci:latest
LABEL maintainer="guillaume.vara@gmail.com"

USER root
    #install requirements (some packages require to run some .exe)
    RUN pacman -S --noconfirm --noprogressbar qt5-base qt5-imageformats qt5-svg qt5-tools qt5-translations
    RUN pacman -S --noconfirm --noprogressbar gstreamer 
    RUN pacman -S --noconfirm --noprogressbar gst-plugins-base
    RUN pacman -S --noconfirm --noprogressbar gst-plugins-good
    RUN pacman -S --noconfirm --noprogressbar miniupnpc

CMD [ "/usr/bin/bash" ]
