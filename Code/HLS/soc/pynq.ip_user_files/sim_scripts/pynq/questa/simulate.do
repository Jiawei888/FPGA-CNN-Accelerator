onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib pynq_opt

do {wave.do}

view wave
view structure
view signals

do {pynq.udo}

run -all

quit -force
