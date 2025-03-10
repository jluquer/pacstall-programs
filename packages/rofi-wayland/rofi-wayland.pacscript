pkgname="rofi-wayland"
gives="rofi"
repology=("project: ${gives}")
arch=('any')
pkgver="1.7.8+wayland1"
url='https://github.com/lbonn/rofi'
source=("@${pkgname}~${pkgver}::https://github.com/lbonn/rofi/releases/download/${pkgver}/${gives}-${pkgver}.tar.gz")
makedepends=(
  "meson"
  "cmake"
  "pkg-config"
  "libglib2.0-dev"
  "libcairo-dev"
  "libpango1.0-dev"
  "libxkbcommon-dev"
  "libgdk-pixbuf-2.0-dev"
  "libxcb-xkb-dev"
  "libwayland-dev"
  "wayland-protocols"
  "libxcb-xinerama0-dev"
  "libxcb-randr0-dev"
  "libxcb-util-dev"
  "libxkbcommon-x11-dev"
  "libxcb-ewmh-dev"
  "libxcb-icccm4-dev"
  "libxcb-cursor-dev"
  "libxcb-keysyms1-dev"
  "libstartup-notification0-dev"
  "flex>=2.5.39"
  "bison"
)
depends=(
  "libcairo2"
  "libpango-1.0-0"
  "libpangocairo-1.0-0"
  "libglib2.0-0"
  "libxkbcommon-x11-0"
  "libxkbcommon0"
  "libgdk-pixbuf-2.0-0"
  "libxcb-xkb1"
  "wayland-protocols"
  "libxcb-xinerama0"
  "libxcb-randr0"
  "libxcb-util1"
  "libxkbcommon-x11-0"
  "libxcb-ewmh2"
  "libxcb-icccm4"
  "libxcb-cursor0"
  "libxcb-keysyms1"
  "libstartup-notification0"
)
sha256sums_amd64=("45ec7c8e8484b2e18b9abeaf54fe1d64e7b7fe4fd1c589559a544dd3c81af7c8")
pkgdesc="A window switcher, application launcher, and dmenu replacement, now with Wayland support"
maintainer=("jluquer <jluquer96@proton.me>")
license=('MIT')

build() {
  cd "${pkgname}~${pkgver}"
  meson setup build --prefix="${pkgdir}"
  ninja -C build -j"${NCPU}"
}

package() {
  cd "${pkgname}~${pkgver}"
  ninja install -C build
}
