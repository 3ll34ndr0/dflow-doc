#!/bin/bash
# Primero lanza el simulador de verilog. 
iverilog -o map9v3_rtl -c input_files.txt 
vvp map9v3_rtl 
# Lanza el visor de ondas para ver el archivo VCD. Usa un archivo .gtkw donde está guardadas la configuración del visor para estas señales.
gtkwave map9v3_tb.vcd map9v3_tb.gtkw
