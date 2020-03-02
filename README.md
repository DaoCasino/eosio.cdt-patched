# About

This repository contains patches and Dockerfile for building [eosio.cdt](https://github.com/EOSIO/eosio.cdt)
used in https://github.com/DaoCasino/DAOBET.contracts/ repository.

# Usage

## tl;dr

```
$ make docker-image
```

## Explained

```
$ docker build -t patched-cdt:latest -f Dockerfile.ubuntu.patched-cdt  .
```

To change the number of build threads, you can set `nproc` variable:

```
$ docker build -t patched-cdt:latest --build-arg nproc=8 -f Dockerfile.ubuntu.patched-cdt  .
```

# Result

```
$ docker run --rm -it patched-cdt ls -lh /
total 107M
drwxr-xr-x   2 root root 4.0K Oct 29 21:25 bin
drwxr-xr-x   2 root root 4.0K Apr 24  2018 boot
drwxr-xr-x   5 root root  360 Dec 12 11:39 dev
-rw-r--r--   1 root root 107M Dec 12 11:28 eosio.cdt_1.6.3-1_amd64.deb
drwxr-xr-x   1 root root 4.0K Dec 12 11:39 etc
drwxr-xr-x   2 root root 4.0K Apr 24  2018 home
drwxr-xr-x   1 root root 4.0K Dec 12 11:00 lib
drwxr-xr-x   2 root root 4.0K Oct 29 21:25 lib64
drwxr-xr-x   2 root root 4.0K Oct 29 21:25 media
drwxr-xr-x   2 root root 4.0K Oct 29 21:25 mnt
drwxr-xr-x   2 root root 4.0K Oct 29 21:25 opt
dr-xr-xr-x 394 root root    0 Dec 12 11:39 proc
drwx------   2 root root 4.0K Oct 29 21:25 root
drwxr-xr-x   1 root root 4.0K Oct 31 22:20 run
drwxr-xr-x   1 root root 4.0K Oct 31 22:20 sbin
drwxr-xr-x   2 root root 4.0K Oct 29 21:25 srv
dr-xr-xr-x  12 root root    0 Dec 12 11:39 sys
drwxrwxrwt   1 root root 4.0K Dec 12 11:28 tmp
drwxr-xr-x   1 root root 4.0K Oct 29 21:25 usr
drwxr-xr-x   1 root root 4.0K Oct 29 21:25 var
```
