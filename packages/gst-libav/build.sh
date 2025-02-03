PKG_NAME=gst-libav
PKG_VER=1.24.11
SRC_URL=https://gstreamer.freedesktop.org/src/gst-libav/gst-libav-$PKG_VER.tar.xz
PKG_DEPENDS="gstreamer ffmpeg"
MESON_ARGS="-Dintrospection=disabled -Dcheck=disabled -Dtests=disabled -Dexamples=disabled"
MESON_ARGS+="-Dbenchmarks=disabled -Dlibunwind=disabled -Dlibdw=disabled -Dnls=disabled"
CFLAGS="-I$PREFIX/include"
LDFLAGS="-L$PREFIX/lib"

build_package() {
    meson setup build $MESON_ARGS
    ninja -C build
    ninja -C build install
}
