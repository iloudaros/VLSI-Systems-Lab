set DESIGN_NAME rca_pipelined

analyze -format verilog {./src/2_2/rca_pipelined.v ./src/2_2/irca.v ./src/given/fulladder.v}
elaborate $DESIGN_NAME

link
check_design

read_sdc scripts/my_scripts/rca_clock.sdc

set_max_area 0

compile_ultra

set resultdir "./results_rca/2_2"
set postfix "compile_ultra"
exec mkdir -p -- $resultdir
report_timing > $resultdir/timing_report.${postfix}.rpt
report_qor > $resultdir/qor_report.${postfix}.rpt
report_area -hierarchy > $resultdir/area_report.${postfix}.rpt
report_power -hierarchy > $resultdir/power_report.${postfix}.rpt

write -hierarchy -format verilog -output $resultdir/rca_compiled.${postfix}.v

quit