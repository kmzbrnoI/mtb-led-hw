MTB-LED PCB
===========

MTB-LED is a 32-output LED driver. It communicates over [MTBbus](https://mtb.kmz-brno.cz/bus) (RS485).
The module is designed for controlling street and house lights on model
railroad, however is could be used generally in any other application.

This repository contains schematics & PCB layout of MTB-LED PCB. Firmware
for main MCU ATmega328p is available
[here](https://github.com/kmzbrnoI/mtb-led-fw). More information about
MTB in available [here](https://mtb.kmz-brno.cz/).

## Design

Schematics & PCB are designed in KiCad 9.

## Production

PCB is prepared to be automatically assembled in [JLCPCB](https://jlcpcb.com/).
SMD parts on **bootom** side should be assembled. Each SMD part has its `LCSC_ITEM`
attribute set.

```bash
$ kikit fab jlcpcb --assembly --schematic mtb-led.sch mtb-led.kicad_pcb fab
```

## Parameters

 * Input voltage: 7–17 V.
   Protection: when > 18 V is applied, input is shorted. Afterwards, current
   is limited by PTC fuse on input to 200 mA. Reverse-polarity protection.
 * Max current consumption: ??? mA.
 * Outputs: 32 constant-current PWM-controlled outputs for LED connection. Connect
   positive pole of LED to power supply, negative to the MTB-LED module.

## Authors

MTB-LED v4 module is designed by [Jan Malina](mailto:jan.malina@kmz-brno.cz),
[Model Railway Club Brno](https://www.kmz-brno.cz/).

## License

Content of the repository is provided under [Creative Commons
Attribution-ShareAlike 4.0
License](https://creativecommons.org/licenses/by-sa/4.0/) as openhardware
project. You may download any data, contribute to the project, create PCB
yourself or even sell it yourself.
