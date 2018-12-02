################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name SYSCLK_N -period 10 [get_ports SYSCLK_N]
create_clock -name SYSCLK_P -period 10 [get_ports SYSCLK_P]

################################################################################