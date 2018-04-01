onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+Project_1 -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Project_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {Project_1.udo}

run -all

endsim

quit -force
