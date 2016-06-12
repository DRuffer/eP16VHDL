lappend auto_path "C:/lscc/diamond/3.7_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {eP16}
set ::bali::simulation::Para(PROJECTPATH) {C:/lscc/eP16VHDL}
set ::bali::simulation::Para(FILELIST) {"C:/lscc/eP16VHDL/gpio16.vhd" "C:/lscc/eP16VHDL/ram_memory.vhd" "C:/lscc/eP16VHDL/uart16.vhd" "C:/lscc/eP16VHDL/ep16.vhd" "C:/lscc/eP16VHDL/ep16_chip.vhd" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "VHDL" "VHDL" "VHDL" "VHDL" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_xp2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {ep32_chip}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VHDL}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ActiveHDL_Run
