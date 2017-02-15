# Latin-Dvorak
Variant of the [![Programmer Dvorak](http://www.kaufmann.no/roland/dvorak)](http://www.kaufmann.no/roland/dvorak) keyboard layout with addictional accents and letters for Italian, French and Spanish. Greek letters for computer science are included, too.

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
Actually this layout is mantained **only** for **_Arch Linux_**

I'm not planning to make it compatible with other linux distros or other OSes, but if some of you are interested in it, I accept any form of collaboration.

# Installation

**Arch Linux:**
``` 
git clone https://github.com/N0rthw1nd/Latin-Dvorak
cd Latin-Dvorak
makepkg
sudo pacman -U dvp-it-1.0.tar.gz

```  
# Usage

`setxkbmap dvp-it`

 New layout loaded.... Enjoy!!

# KeyBoard Preview:

![Image](https://github.com/N0rthw1nd/Latin-Dvorak/blob/master/Latin-Dovrak-layout.png "Latin-Dvorak Preview")
