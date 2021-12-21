//
// Verilog Module encoder_decoder_lib.verification_checker
//
// Created:
//          by - yuvalsaa.UNKNOWN (L330W527)
//          at - 15:00:13 12/19/2021
//
// using Mentor Graphics HDL Designer(TM) 2016.2 (Build 5)
//

`resetall
`timescale 1ns/10ps
module verification_checker(
  verification_interface.checker_coverager checker_bus
) ;

property rst_active;
				@(checker_bus.rst) checker_bus.rst == 0 |=> checker_bus.data_out == {DATA_WIDTH{1'b0}};
				endproperty 
				
assert property (rst_active) 
  else $error("error with rst");
  cover property (rst_active);
			
property encode;
				@(checker_bus.type_of_work,checker_bus.operation_done)
				  checker_bus.type_of_work == 1 && checker_bus.operation_done == 1 |=>
				    checker_bus.data_out == checker_bus.encoded_data_in;
				endproperty
		
assert property (encode) 
  else $error("error with encode");
  cover property (encode);
  
property decode_no_noise ;
        @(checker_bus.type_of_work,checker_bus.operation_done,checker_bus.stim_num_of_errors)
				  checker_bus.type_of_work == 2 && checker_bus.operation_done == 1 && checker_bus.stim_num_of_errors == 0 |=>
				    checker_bus.data_out == checker_bus.decoded_data_in && checker_bus.num_of_errors == 0;
				endproperty
				
assert property (decode_no_noise) 
  else $error("error with decode_no_noise");
  cover property (decode_no_noise); 

property decode_1_noise ;
        @(checker_bus.type_of_work,checker_bus.operation_done,checker_bus.stim_num_of_errors)
				  checker_bus.type_of_work == 2 && checker_bus.operation_done == 1 && checker_bus.stim_num_of_errors == 1 |=>
				    checker_bus.data_out == checker_bus.decoded_data_in && checker_bus.num_of_errors == 1;
				endproperty
				
assert property (decode_1_noise) 
  else $error("error with decode_1_noise");
  cover property (decode_1_noise); 

property decode_2_noise ;
        @(checker_bus.type_of_work,checker_bus.operation_done,checker_bus.stim_num_of_errors)
				  checker_bus.type_of_work == 2 && checker_bus.operation_done == 1 && checker_bus.stim_num_of_errors == 2 |=>
				    checker_bus.num_of_errors == 2;
				endproperty
				
assert property (decode_2_noise) 
  else $error("error with decode_2_noise");
  cover property (decode_2_noise); 						 

endmodule
