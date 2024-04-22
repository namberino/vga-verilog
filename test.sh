apio verify
apio sim
if [ -f "vga_tb.vcd" ]; then exit 0; else exit 1; fi   # verify dumpfiles
