# n8 Bit Microcomputer

The n8 Bit Microcomputer is a homebrew breadboard computer built around a WDC65C02 8-bit CPU.
If you are looking for the software that runs on this computer, check out [LmaOS](https://github.com/nrivard/lmaos).

## History

The n8 Bit was originally a breadboard computer based on the [Ben Eater series of 6502 videos](https://www.youtube.com/playlist?list=PLowKtXNTBypFbtuVMUVXNR0z1mu7dp7eH) but with some added capabilities including ACIA support, GAL-based address decoding logic, and a power chip for more reliable reset and power-on.
Since then, PCBs have been printed and development around the computer is based on these.

<img src="n8BitBreadboard.png" alt="nate bit microcomputer on a breadboard" width="400"/>

## Main Board

The main board is built around a WDC65C02 CPU operating at 2Mhz and is meant to be as minimal as possible. It consists of:

* 3 memory sockets (AT28C256/CY62256 footprint) for a configurable mix of RAM and/or ROM
* GAL22V10 for address decoding
* Crystal oscillator can for clock generation
* 74HC21 for multi-device interrupt handling
* DS1813 for reset and power-on circuitry
* 4 n8 Bus ports for I/O
* 4 pin "power port" header for +5V, ground, and USB D+/D-

<img src="n8BitV1.png" alt="nate bit microcomputer, version 1" width="400"/>

## Address space

By default, the n8 Bit is intended to have the following memory hardware:

* 1 Atmel AT28C256
* 2 Cypress CY62256NL

### Default Memory Layout

If you are using the default hardware and the included GAL code, it has the following memory layout:

| Device | Address Range |
|--------|---------------|
| Zero Page | `$0000...$00FF` |
| Stack | `$0100...$01FF` |
| RAM | `$0200...$BEFF` |
| Port 0 | `$BF00...$BF3F` |
| Port 1 | `$BF40...$BF7F` |
| Port 2 | `$BF80...$BFBF` |
| Port 3 | `$BFC0...$BFFF` |
| ROM | `$C000...$FFFF` |

This configuration has 16K of ROM, 48k (less one page) of RAM, and 1 page of memory (`$BF00...$BFFF`) dedicated to 4 I/O ports, each of which with 64 addressable memory locations.

### Customizing the Address Space

Because address decoding is entirely GAL based, you have a lot of room to customize the address space.
The GAL itself has physical connections to each port and to each memory socket for CS signals. How you utilize these (or even _if_ you utilize them) is entirely up to you.
If you wanted a simpler computer (like the Ben Eater computer) you may opt to leave one memory socket open and only use a single RAM and a single ROM chip.
If you go this route, you will have to update your own GAL code to match your hardware configuration.

## n8 Bus

The biggest advancement with the n8 Bit when it moved from breadboards to custom PCBs is the introduction of the n8 Bus spec.
The spec mandates that the following signals will be available on a standard 2x16 board-to-board female header:

**Bidirectional signals:**

* all 8 bits of the data bus
* USB D+ and D- signals, connected to the power port

**Read-only signals:**

* bottom 6 bits of the address bus
* per-port dedicated <SPAN STYLE="text-decoration:overline">CS</SPAN> signal
* CPU's R/<SPAN STYLE="text-decoration:overline">W</SPAN> signal
* clock
* <SPAN STYLE="text-decoration:overline">RESET</SPAN>

**Write-only signals:**

* per-port <SPAN STYLE="text-decoration:overline">NMI</SPAN>
* per-port <SPAN STYLE="text-decoration:overline">IRQ</SPAN>

**Expansion signals:**

The n8 Bus spec includes 2 lines (`FUTURE0` and `FUTURE1`) that don't currently have a purpose.
These are hooked up to 2 I/O pins of the GAL and are intended for you to customize them.
For example, if you are interfacing with many non-6502 based devices (maybe 6800 devices) that require qualified /RD and /W signals, you can customize your GAL to provide those signals to the n8 Bus ports.

In addition, if you're not going to utilize the USB D+/D- signals on the power port, you may also use these to send global signals to all 4 n8 Bus ports.

## I/O Expansion Cards

The main board for this computer is intentionally minimal.
This means that all of your I/O functionality (UART, VIA, display, sound, etc.) has to come in the form of an expansion card that sits in a n8 Bus port.

### Reference Cards

Two highly utilized devices that many hobbyists want to include on a homebrew computer are a UART (for communicating with a much more capable device) and a GPIO device.
In this repo, 2 such reference designs are included:

* a UART card based on the Rockwell 65C51, called Kids Serial
* a GPIO (and other functions) card based on the WDC65C22S, called Viaduct



### Custom Cards

If you want to create your own cards, it's best to copy one of the existing reference designs first.
This is because they will already have:

* the n8 Bus port with proper pin directionality _for the card_ in the schematic
* a standardized PCB footprint
* some device footprints (like the 2x16 right-angle male pin header) set

This will ensure you have consistent and correct card designs from the start.

<img src="KidsSerialV1.png" alt="Kids Serial, a UART card, version 1" width="400"/>

**Note**: Neither card design included has had their PCB tested &#129335;

## Interrupts

<SPAN STYLE="text-decoration:overline">NMI</SPAN> and <SPAN STYLE="text-decoration:overline">IRQ</SPAN> are supported for all 4 n8 Bus ports.
This board uses a WDC65C02 which uses a totem-pole design (the 6502 used an open-drain design) and so the board also includes optional jumpers for pull-up resistors. In general:

* if your device is open-drain (older 6551s) or your device does not support interrupts at all, you will need to **_add_** jumpers across the interrupt lines for that port
* if your device is totem-pole (WDC65C22S), you will want to **_remove_** the jumpers as the pull-up resistor will slow down signal change

See [this article from Garth Wilson](http://wilsonminesco.com/6502primer/IRQconx.html) for more information.

## Known Bugs

This was my first attempt at a custom schematic and PCB so of course I made some mistakes.

V1 has at least one major hardware flaw.
It has unstable voltage as wired because the power LED has a voltage drop across it and is directly connected to the output of the DS1813.
To fix this, you'll need to cut one trace and wire up some bodge wires as pictured below.
This should get rectified in V2 and/or an amended V1.

<img src="n8BitBodgesV1.png" alt="Bodge wire fixes, version 1" width="400"/>

V1 also has a minor hardware flaw in that the ports are too close together.
If your cards utilize sockets (which many hobbyists use), the cards will be too thick to all fit.
This will also be remedied in V2 but in the meantime, you can try only utilizing 2 of the 4 ports or soldering devices directly the board.
