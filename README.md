# River Raid Disassembly

This project reverse engineers [River Raid](http://www.worldofspectrum.org/infoseekid.cgi?id=0004154), a classic game for [ZX Spectrum](http://en.wikipedia.org/wiki/ZX_Spectrum) 48K published by [Activision](https://en.wikipedia.org/wiki/Activision), from the original tape image using [SkoolKit](http://skoolkit.ca/).

The annotated disassembly is available [here](https://river-raid.github.io/river-raid-disasm/).

<p align="center">
    <img src="https://raw.githubusercontent.com/morozov/river-raid-disasm/master/png/screen.png" width="512" height="384" alt="River Raid">
</p>

## Building the Disassembly

1. Install [SkoolKit](http://skoolkit.ca/docs/skoolkit/usage.html). At least Skoolkit 8.4 is required.
2. Install [Pasmo](http://pasmo.speccy.org/). It is used to compile the disassembly and make sure that it produces exactly the same snapshot as the one made from the game image.
3. Build the disassembly by running `make`.

The resulting `river-raid.z80` will contain the game image with all the fixes applied (mostly sprites and few assembly instructions). The [`river-raid.asm`](river-raid.asm) file will contain the disassembly.
