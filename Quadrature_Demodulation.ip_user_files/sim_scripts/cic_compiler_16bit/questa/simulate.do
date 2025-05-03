onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib cic_compiler_16bit_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {cic_compiler_16bit.udo}

run 1000ns

quit -force
