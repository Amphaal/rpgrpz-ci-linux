FROM amphaal/rpgrpz-docker-ci:latest
LABEL maintainer="guillaume.vara@gmail.com"

USER devel
    #install build prerequisites (2 / 3) (prebuilt requisites)
    RUN yay -S --noconfirm --noprogressbar --needed uasm qt-installer-framework

USER root
    #install requirements (some packages require to run some .exe)
    RUN pacman -S --noconfirm --noprogressbar gstreamer gst-plugins-base gst-plugins-good qt miniupnpc

CMD [ "/usr/bin/bash" ]
