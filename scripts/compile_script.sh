vlib work
vlog -reportprogress 300 -work work ../src/verilog/**.v
vlog -reportprogress 300 -work work ../test/**/tester_v.v

# 

# f8 test_bench
vsim -gui work.tester_v_f8