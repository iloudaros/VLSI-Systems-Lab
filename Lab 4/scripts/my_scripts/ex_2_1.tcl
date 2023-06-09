set DESIGN_NAME rca_w_regs

analyze -format verilog {./src/2_1/rca_w_regs.v ./src/given/rca.v ./src/given/fulladder.v}
elaborate $DESIGN_NAME

link
check_design

read_sdc scripts/my_scripts/rca_clock.sdc

set_max_area 0

compile

set resultdir "./results_rca/2_1"
set postfix "compile"
exec mkdir -p -- $resultdir
report_timing > $resultdir/timing_report.${postfix}.rpt
report_qor > $resultdir/qor_report.${postfix}.rpt
report_area -hierarchy > $resultdir/area_report.${postfix}.rpt
report_power -hierarchy > $resultdir/power_report.${postfix}.rpt

write -hierarchy -format verilog -output $resultdir/rca_compiled.${postfix}.v

quit