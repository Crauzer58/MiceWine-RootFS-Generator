PKG_VER=25.0.0-devel-[gss]
PKG_CATEGORY="VulkanDriver"
PKG_PRETTY_NAME="Mesa Turnip Driver"
VK_DRIVER_LIB="libvulkan_freedreno.so"

BLACKLIST_ARCHITECTURE=x86_64

GIT_URL=https://gitlab.freedesktop.org/mesa/mesa
GIT_COMMIT=8a453669e2bd44651cacdeac1c372d6e80cab0a7
LDFLAGS="-L$PREFIX/lib -landroid-shmem"
CPPFLAGS="-D__USE_GNU"
MESON_ARGS="-Dgallium-drivers= -Dvulkan-drivers=freedreno -Dfreedreno-kmds=kgsl -Dglvnd=disabled -Dplatforms=x11 -Dxmlconfig=disabled -Dllvm=disabled -Dopengl=false -Degl=disabled -Dzstd=enabled"
