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
ExecStep $xv_path/bin/xelab -wto d85400b6ed1c4863bc439ec7487b2f78 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot tb_sign_ext_behav xil_defaultlib.tb_sign_ext -log elaborate.log
