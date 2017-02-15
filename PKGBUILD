# Maintainer Antonino Tramontana email <antonino.tram@tutanota.com>

pkgname=dvp-it
pkgver=1.0
pkgrel=1
pkdesc="A variant of the Programmer Dvorak keyboard layout with additional accents/letters for Italian, French, Spanish and Greek letters for computer scientists"
arch=('any')
license=('GPL3')
makedepends=('coreutils')
source=('LICENSE' 'README.md' 'dvp-it') 
md5sums=('84dcc94da3adb52b53ae4fa38fe49e5d' '2e2fae17ab435b17322fa0b002a70dac' '18705a9066e12d9e503525d43771e23b')

package() {
	mkdir -p $pkgdir/usr/share/X11/X11/xkb/symbols
	mkdir -p $pkgdir/usr/share/$pkgname
	install -Dm644 $srcdir/LICENSE $pkgdir/usr/share/licenses/$pkgname/LICENSE 
	install -Dm644 $srcdir/README.md $pkgdir/usr/share/doc/$pkgname/README
	install -Dm644 $srcdir/$pkgname $pkgdir/usr/share/X11/xkb/symbols/$pkgname
}

