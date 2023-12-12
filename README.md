# OpenAIA Debupdate

Build instruction for OpenAIA Debupdate image in docker container.

## Clone source

```
$ mkdir debupdate-openaia && cd debupdate-openaia
$ git clone git@github.com:openaia/debos.git
$ git clone git@github.com:openaia/debmodel.git
$ git clone git@github.com:openaia/debupdate.git
```

## Download artifacts

```
$ cd debos && ./download-artifacts.sh && cd -
$ cd debmodel && ./download-artifacts.sh && cd -
$ cd debupdate && ./download-artifacts.sh && cd -
```

## Build OpenAIA Debupdate

Install the [docker](https://docs.docker.com/engine/install/ubuntu/) at host.

Build OpenAIA Debupdate for 6TOPS,
```
$ docker run -ti --privileged --net host -v `pwd`:/home/build/shared -w /home/build/shared ghcr.io/openaia/easy-build/build-debos:bookworm-v0.1 sudo debos --memory=8Gb -t imgname:6tops debupdate/recipe.yaml
```

## Program

We can program microSD or eMMC, assume /dev/sdX is microSD detected in host,
```
$ sudo bmaptool copy --bmap openaia-bullseye-6tops.bmap openaia-bullseye-6tops.img.gz /dev/sdX
```
