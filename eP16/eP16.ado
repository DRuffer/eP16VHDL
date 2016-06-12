setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/lscc/eP16VHDL/eP16/eP16.adf"]} { 
	design create eP16 "C:/lscc/eP16VHDL"
  set newDesign 1
}
design open "C:/lscc/eP16VHDL/eP16"
cd "C:/lscc/eP16VHDL"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_xp2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/lscc/eP16VHDL/gpio16.vhd"
addfile "C:/lscc/eP16VHDL/ram_memory.vhd"
addfile "C:/lscc/eP16VHDL/uart16.vhd"
addfile "C:/lscc/eP16VHDL/ep16.vhd"
addfile "C:/lscc/eP16VHDL/ep16_chip.vhd"
vlib "C:/lscc/eP16VHDL/eP16/work"
set worklib work
adel -all
vcom -dbg -work work "C:/lscc/eP16VHDL/gpio16.vhd"
vcom -dbg -work work "C:/lscc/eP16VHDL/ram_memory.vhd"
vcom -dbg -work work "C:/lscc/eP16VHDL/uart16.vhd"
vcom -dbg -work work "C:/lscc/eP16VHDL/ep16.vhd"
vcom -dbg -work work "C:/lscc/eP16VHDL/ep16_chip.vhd"
entity ep32_chip
vsim  +access +r ep32_chip   -PL pmi_work -L ovi_xp2
add wave *
run 1000ns
