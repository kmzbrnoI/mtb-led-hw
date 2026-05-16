all: fab

clean:
	rm -r fab

fab: mtb-led.kicad_pcb mtb-led.kicad_sch
	kikit fab jlcpcb --no-drc --assembly --schematic mtb-led.kicad_sch mtb-led.kicad_pcb fab

.PHONY: all clean
