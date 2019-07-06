# neverball-mingw

This is a [Dockerfile](https://www.docker.com/) of a MinGW build environment for [Neverball](https://neverball.org).

It is used to build the [parasti/neverball-mingw](https://hub.docker.com/r/parasti/neverball-mingw) Docker image.

The Docker image is based on Fedora, installs the excellent Fedora MinGW toolchain, bundles all the dependencies, and includes the [mingw-list-deps](https://github.com/parasti/mingw-list-deps) tool.

## Usage

Generally, you don't need this repo at all, you just need the Docker image.

```
git clone https://github.com/neverball/neverball.git
cd neverball
docker run --interactive --tty --volume $(pwd):/neverball --workdir /neverball parasti/neverball-mingw
> mingw32-make PLATFORM=mingw -o sols
> mingw-list-deps --copy *.exe
> exit
```
