FROM fedora
ADD https://github.com/parasti/mingw-list-deps/raw/master/mingw-list-deps /usr/local/bin/mingw-list-deps
RUN chmod a+rx /usr/local/bin/mingw-list-deps
RUN dnf --assumeyes install \
    make \
    findutils \
    git \
    mingw32-gcc \
    mingw32-SDL2 \
    mingw32-SDL2_ttf \
    mingw32-libpng \
    mingw32-libjpeg-turbo \
    mingw32-freetype \
    mingw32-libvorbis \
    mingw32-gettext \
    mingw32-curl
RUN git config --global --add safe.directory /neverball
