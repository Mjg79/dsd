#!/bin/bash

for test_folder in */
do
	test_name=$(echo $test_folder | cut -d'/' -f1)
	echo TEST $test_name

	data_file=$test_name/data.dat

	# C Part
	c_source=$test_name/tester_c.c
	c_exec=$test_name/tester_c.out
	c_output=$test_name/output_c.txt

	echo Compiling C code
	gcc $c_source -o $c_exec

	echo Running C code
	./$c_exec < $data_file > $c_output

	# Verilog Part
	v_source=$test_name/tester_v.v
	v_exec=$test_name/tester_v.out
	v_output=$test_name/output_v.txt

	echo Compiling Verilog code
	iverilog $v_source -o $v_exec

	echo Running Verilog code
	./$v_exec < $data_file > $v_output

done

