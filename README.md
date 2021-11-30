# Interface PCB for HomeBus®-based Devices

Ever wonder what A/C systems talk about? Have a HomeBus®-based system like P1P2? Satisfy your curiosity and reward yourself with a fun and challenging project! Build or send away for one of these from your favorite PCB manufacturer, and enjoy direct access to your system. The possibilities are vast!

## Key Features
- Read from and optionally write to your HomeBus® (i.e., the stream of data running between parts of your A/C system and/or other HomeBus®-based devices)
- Power an Arduino Uno and companion devices (e.g., ESP8266) directly from your pre-existing wiring (i.e., the two wires coming out of the wall and going into the thermostat) instead of spending time on complicated power management features for battery operation
- Enjoy fully-specified KiCad files and an MIT license, empowering you to tweak or integrate this design into your own projects

## Specs and Validation
Based on reference design from MAX22088 datasheet, which is optimized for 57.6kbps. Observed to operate correctly on a system running at 9600bps over multi-hour burn-in test.

# Usage

## Warning
Using this device may damage your HomeBus® system! Check with your doctor to see if Tinkering is right for you. In my experiments, I tested everything the best that I could before using it and I suggest that you do the same. Also, note that this involves connection to AC wiring (the HomeBus®). Be careful with that step, as it can be dangerous.

## PCB Creation / Sourcing

### PCB Manufacturer
As of 2021, I paid $5 for 5 boards plus $15 for shipping from PCBWay, and at least one tested OK.

1. Export gerber files from KiCad and send them to your PCB manufacturer. Most have specific requirements for options in the export process. For PCBWay, find these [here](https://www.pcbway.com/blog/help_center/Generate_Gerber_file_from_Kicad_5_1_6.html).
2. Upload the zip file and select the correct tolerances on your PCB manufacturer's website. See the "design rules" menu in KiCad for these. Be sure to run a design rules check in the PCB editor just to double-check that you have the right options. Also be sure to select the correct number of vias, etc. The automated system is likely to catch errors, but getting things wrong here might slow down the process and affect your quoted price.
3. For anything not in the design rules, I highly recommend selecting the cheapest option.

Note: Most manufacturers can also populate the board with components, but this will be an extra cost. DIY'ing it can be fun and cheaper with the proper tools (hot air tool, soldering iron with small tip). Your manufacturer of choice will likely have this option on their website.

### At-Home (Guidelines)
There are people who are experts at this. Refer to their advice (Google around). Take the suggestions below with a grain of salt, but above all else, please keep in mind the inherent danger of working with chemicals at home:

The PCB can be manufactured with an at-home process by printing onto high-quality acetate compatible with your printer, UV exposure onto a presensitized, double-sided PCB, development, and etching. Toner transfer is unlikely to work due to the tolerances involved. CNC milling is also an option.

## Connection to Arduino Uno

### Software
I recommend the [P1P2Serial](https://github.com/Arnold-n/P1P2Serial) Arduino-compatible C++ library to interact with the HomeBus®. The included P1P2Serial library is a great interface tool. The P1P2 monitor example may be a helpful starting point for its ability to dump out packets from the bus as raw hex to the Arduino's USB serial device. Keep in mind that the decoding logic may not make sense for your specific device.

### Hardware
My test configuration is as follows. To allow writing to the bus, drive the RST pin on the interface board to GND instead of +5V.

- Connect J2 to Positive (sometimes called P1) and J3 to Neutral (sometimes called P2) on the HomeBus®. These are likely interchangeable, but I have not validated this in practice. See termination section of schematic (bottom-left).
- +12V -> Arduino Vin
- +5V -> 1k resistor -> interface board RST (this disables output, move input to GND to enable)
- GND -> Arduino GND
- VLOGIC -> Arduino +5V
- DOUT -> Arduino8* ||** (20kOhm resistor -> Arduino GND)
- DIN -> NC***

\*: Arduino labeled input "8" in "Digital PWM" section (Port B, Input 0 of ATmega328p)\
\*\*: Shorthand notation for "in parallel with"\
\*\*\*: Shorthand for "no connect" -- the data input is not connected to anything since writing to the bus is disabled

Notes (__Important__)
- The maximum load on +12V is 200mA, per the MAX22088 spec
- Do not use +5V for anything that draws more than 70 milliamps, and do not use it at all for external loads if using +12V
- I have found +12V outputs a very noisy 12V DC in my particular application, but the spec says that 7.3V is typical, without listing a maximum.
