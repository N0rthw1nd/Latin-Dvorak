# Maintainer Antonino Tramontana email <antonino.tram@tutanota.com>
# Contributor Omar Polo <omar.polo@europecom.net>

pkgname=dvp-it
pkgver=1.0
pkgrel=1
pkdesc="A variant of the Programmer Dvorak keyboard layout with additional accents/letters for Italian, French, Spanish and Greek letters for computer scientists, avaiable for both X and tty"
arch=('any')
license=('GPL3')
makedepends=('coreutils')
source=('LICENSE' 'README.md' 'dvp-it' 'dvp-it.map')

md5sums=('84dcc94da3adb52b53ae4fa38fe49e5d'
		'51b4a0358f1a7561e2bb5616a6e812d4'
		'18705a9066e12d9e503525d43771e23b'
		'dc80a02c143e7db53135fbd33657677e')

package() {
	mkdir -p $pkgdir/usr/share/X11/X11/xkb/symbols
	mkdir -p $pkgdir/usr/share/$pkgname

	gzip -c < dvp-it.map > dvp-it.map.gz
	install -Dm644 $srcdir/dvp-it.map.gz $pkgdir/usr/share/kbd/keymaps/i386/dvorak/dvp-it.map.gz
	install -Dm644 $srcdir/LICENSE $pkgdir/usr/share/licenses/$pkgname/LICENSE
	install -Dm644 $srcdir/README.md $pkgdir/usr/share/doc/$pkgname/README
	install -Dm644 $srcdir/$pkgname $pkgdir/usr/share/X11/xkb/symbols/$pkgname
}

# vim:noexpandtab
