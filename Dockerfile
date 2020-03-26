FROM amphaal/rpgrpz-docker-ci:latest
LABEL maintainer="guillaume.vara@gmail.com"

USER devel
    #install build prerequisites (2 / 3) (prebuilt requisites)
    RUN yay -S --noconfirm --noprogressbar --needed uasm

USER root
    #install requirements (some packages require to run some .exe)
    RUN pacman -S --noconfirm --noprogressbar qt
    RUN pacman -S --noconfirm --noprogressbar gstreamer 
    RUN pacman -S --noconfirm --noprogressbar gst-plugins-base
    RUN pacman -S --noconfirm --noprogressbar gst-plugins-good
    RUN pacman -S --noconfirm --noprogressbar miniupnpc

CMD [ "/usr/bin/bash" ]
