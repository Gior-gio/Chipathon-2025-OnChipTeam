# NOTE: PDK_ROOT, PDK and CACE_ROOT are set in the local environment by CACE
#
# This is an example script to drive LVS; because this is a simple
# example, there is no specific benefit of using this instead of the
# default handling in CACE.

set PDK_ROOT $::env(PDK_ROOT)
set PDK $::env(PDK)
set CACE_ROOT $::env(CACE_ROOT)

set circuit1 [readnet spice $CACE_ROOT/netlist/layout/current_reference_load.spice]
set circuit2 [readnet spice $CACE_ROOT/netlist/schematic/current_reference_load.spice]

lvs "$circuit1 current_reference_load" "$circuit2 current_reference_load" $PDK_ROOT/$PDK/libs.tech/netgen/${PDK}_setup.tcl current_reference_load_comp.out -json
