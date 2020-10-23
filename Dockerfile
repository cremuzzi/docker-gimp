FROM alpine:3.12

LABEL maintainer="Carlos Remuzzi <carlosremuzzi@gmail.com>"

RUN apk add --no-cache \
    dbus \
    dbus-x11 \
    iso-codes \
    ttf-freefont ttf-opensans ttf-font-awesome ttf-ubuntu-font-family ttf-inconsolata \
    gimp \
  && adduser -u 1000 -D gimp

USER gimp

WORKDIR /home/gimp

CMD ["gimp"]
