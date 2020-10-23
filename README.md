# How to use this image

docker run --rm \
  -e DISPLAY \
  -v /path/to/your/images:/home/gimp/Downloads \
  -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
  -v /tmp/.docker.xauth:/home/gimp/.Xauthority:ro \
  cremuzzi/gimp
