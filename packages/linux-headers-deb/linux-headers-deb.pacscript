pkgname="linux-headers-deb"
gives="linux-headers-6.14.0-061400rc3"
pkgver="6.14~rc3"
buildver="6.14.0-061400rc3.202502181422"
source=("https://kernel.ubuntu.com/~kernel-ppa/mainline/v${pkgver/\~/-}/amd64/${gives}_${buildver}_all.deb")
pkgdesc="Ubuntu Linux mainline kernel (Headers)"
sha256sums=("a4b1b1d9af3a23ca1b35a38abb2c2726a07761188b6d7a8fcebc5340f286b688")
arch=('all')
maintainer=("Oren Klopfer <oren@taumoda.com>")
repology=("project: linux" "repo: aur" "srcname: linux-mainline" "binname: linux-mainline-headers")
