###########################################################
#
###########################################################

remove_design -designs

##############################################################
###################Defines Design Libraries###################
##############################################################

# Read in design defaults
source Scripts/Setup.tcl


##############################################################
############Read The Design Then Setting Top Level############
##############################################################

## ANALYZE FILES

# packages

# sourcecode

analyze -library WORK -format sverilog {dec_comparator.sv}
analyze -library WORK -format sverilog {dec_comparator_all_options.sv}
analyze -library WORK -format sverilog {dec_flip_a_bit.sv}
analyze -library WORK -format sverilog {dec_is_column.sv}
analyze -library WORK -format sverilog {dec_mat_multiplier_8bit.sv}
analyze -library WORK -format sverilog {dec_mat_multiplier_16bit.sv}
analyze -library WORK -format sverilog {dec_mat_multiplier_32bit.sv}
analyze -library WORK -format sverilog {dec_mat_multiplier_all_options.sv}
analyze -library WORK -format sverilog {dec_output_ctrl.sv}
analyze -library WORK -format sverilog {dec_priority_encoder.sv}
analyze -library WORK -format sverilog {decoder.sv}
analyze -library WORK -format sverilog {ECC_ENC_DEC.sv}
analyze -library WORK -format sverilog {enc_dec_ctrl.sv}
analyze -library WORK -format sverilog {enc_dec_rgf.sv}
analyze -library WORK -format sverilog {enc_parity_8.sv}
analyze -library WORK -format sverilog {enc_parity_16.sv}
analyze -library WORK -format sverilog {enc_parity_32.sv}
analyze -library WORK -format sverilog {encoder.sv}

#current_design ECC_ENC_DEC


## ELABORATE TOP
elaborate ECC_ENC_DEC -architecture verilog -library WORK

# Post elaboration save design
file mkdir save/
write -f ddc -h -o save/post_elaboration.ddc

##############################################################
#######################Read Constraints#######################
##############################################################

# === Compile top ====================================================
current_design ECC_ENC_DEC
link

# Read in the SDC constraints
source Constrains.sdc


##############################################################
##################Compile/Synthesize Design###################
##############################################################

## Without Clock Gating & Without SAIF ##
compile
#check_design
#check_timing
#report_design


### <--- Alternative Options ---> ###
  ## Clock Gating & Without SAIF ##
#compile -gate_clock
#report_power > reports/syn_power_wCG_woSAIF.rep

  ## Without Clock Gating & With SAIF ##
# Reading power tuggle information from simulation
#read_saif -input dut_saif_rep.saif -instance_name "tb_overall/dut" -verbose
#compile
#report_power > reports/syn_power_woCG_wSAIF.rep

  ## Clock Gating & With SAIF ##
#compile -gate_clock
#report_power > reports/syn_power_wCG_wSAIF.rep
### <--- Alternative Options ---> ###

current_design ECC_ENC_DEC

###################################
#   Post Synthesis Reports        #
###################################
file mkdir reports
check_design > reports/check_design.rpt
report_timing  > reports/syn_timing.rep
report_area > reports/syn_area.rep
report_power > reports/syn_power_woCG_woSAIF.rep
report_constraint -all_violators > reports/syn_constrains.rep

# Post synthesis save design
write -f ddc -h -o save/post_synthesis.ddc

##########################
#   Export Design        #
##########################

#export sdc constraints for encounter
file mkdir outputs

#change_name -h -rules verilog
write -h -f verilog -o outputs/top.v

#save the SDF file
write_sdf outputs/top.sdf
