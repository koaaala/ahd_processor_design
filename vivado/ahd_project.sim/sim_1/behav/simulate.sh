#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2017.2"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim tb_sign_ext_behav -key {Behavioral:sim_1:Functional:tb_sign_ext} -tclbatch tb_sign_ext.tcl -view /home/koala/workspace/xilinx/ahd_processor_design/vivado/tb_sign_ext_behav.wcfg -log simulate.log
