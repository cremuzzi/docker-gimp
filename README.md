# How to use this image

```sh
docker run --rm \
  -e DISPLAY \
  -v /path/to/your/images:/home/gimp/Downloads \
  -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
  -v /tmp/.docker.xauth:/home/gimp/.Xauthority:ro \
  cremuzzi/gimp
```

Where `/path/to/your/images` is a path on your host system with the images you want to edit.

The `DISPLAY` variable and the volumes `/tmp/.X11-unix`, `/tmp/.docker.xauth` allow your
container to connect to your host's X server in an isolated way.

More info on Xauth in container [here](http://wiki.ros.org/docker/Tutorials/GUI)
