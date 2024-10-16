if { ![info exists sourcefiles] || ![info exists topmodule] } {
    puts "ERROR: Please set 'sourcefiles' and 'topmodule' variables before sourcing."
    return
}

# quit current simulation if any
quit -sim

# empty the work library if present
if [file exists "work"] {vdel -all}
#create a new work library
vlib work

# run the compiler
if [catch "eval vlog $sourcefiles"] {
    puts "[ERROR] Correct the compilation errors!"
    return
}

vsim -voptargs=+acc $topmodule

run -all
quit -sim