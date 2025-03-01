# Latin-Dvorak
Variant of the [Programmer Dvorak](http://www.kaufmann.no/roland/dvorak) keyboard layout with addictional accents and letters for Italian, French and Spanish. Greek letters for computer science are included, too.

**_NOTE:_**
This layout works better for Italian and English writing (because I made it for my personal use), but it could also be used for French and Spanish writing.

All the additional characters for non-english languages can be accessed using the "Alt Key" for level 3 and level 4, in my case they are "AltGr" and "AltGr+Shift" but they can differ basing on your OS configuration.

# Main Features
- Numbers are placed in Shift position in their standard order: 1..0 
- The accents are placed on the homerow where the vowels lay: grave accents are on level 3 and acute accents are on level 4.
- Character 'È' has been placed on level 3 in the 'è' position for an Italian Keyboard.
- Greek letters are placed on the lower row except of Δ in the 'd' position on level 3 for a standard Dvorak keyboard
- The characters for computational complexity have been placed under the left home row, on level 3 the uppercase and on level 4 the lowercase (that's because the first ones are more used)

# OS Compatibility
I'm maintaining this layout mainly for **_Arch Linux_** and **_Debian/Ubuntu_**.
Configuration files for **_Windows_** and **_macOS_** have also been added thanks to collaborators.
Currently the only issue with Windows and macOS is that uppercase vowels are not working.
If you are interested in adapting it for other OS or distributions, I accept any form of collaboration.

# Installation

**Arch Linux:**
```
$ git clone https://github.com/N0rthw1nd/Latin-Dvorak
$ cd Latin-Dvorak
$ makepkg -si
```

**Debian/Ubuntu:**

There are three ways to install this keyboard layout on Debian-based systems:

1. **Direct installation** (recommended):
   ```
   $ git clone https://github.com/N0rthw1nd/Latin-Dvorak
   $ cd Latin-Dvorak/Debian
   $ sudo ./install-direct.sh
   ```

2. **Build and install as a Debian package**:
   ```
   $ git clone https://github.com/N0rthw1nd/Latin-Dvorak
   $ cd Latin-Dvorak/Debian
   $ dpkg-buildpackage -b -us -uc
   $ cd ..
   $ sudo dpkg -i dvp-it_*.deb
   ```

3. **Using the installation script**:
   ```
   $ git clone https://github.com/N0rthw1nd/Latin-Dvorak
   $ cd Latin-Dvorak/Debian
   $ sudo ./dvp-it-debian-install.sh
```

**Windows:**

**NOTE:** _The source code is configured to install the layout under Italian Language, but you should be able to change this in the source code with MWLC._  

Install Microsoft Windows Layout Creator (MWLC), load the layout, build it as a package and install it (with the setup), then reboot your computer. Now you can select it from the layout menu.

**macOS:**
```
$ sudo cp dvp-it.keylayout /Library/Keyboard\ Layouts
Set as layout "dvp-it" under mac keyboard preferences.
```

# Usage
 
**Linux (Arch, Debian, Ubuntu):**
 
I recommend you set the level 3 switch, if you hadn't done it yet, directy inside xinitrc (in your home directory) as above:

`$ setxkbmap -option lv3:ralt_switch`

To switch layout:

`$ setxkbmap dvp-it`

New layout loaded.... Enjoy!!

# Troubleshooting

If you get an error like "Error loading new keyboard description" when running `setxkbmap dvp-it`:

1. Make sure the keyboard layout was properly installed:
   ```
   ls -la /usr/share/X11/xkb/symbols/dvp-it
   ```

2. Try refreshing the XKB cache:
   ```
   sudo rm -f /var/lib/xkb/*.xkm
   ```

3. Try installing using the direct installation method:
   ```
   sudo ./install-direct.sh
   ```

4. Try rebooting your system after installation.

# KeyBoard Preview:

![Image](https://github.com/N0rthw1nd/Latin-Dvorak/blob/master/Latin-Dovrak-layout.png "Latin-Dvorak Preview")
