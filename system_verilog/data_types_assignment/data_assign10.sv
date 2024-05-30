/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign10.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of splitting of dynamic array using inbuilt methods
***************************************************************************/
module data_assign10 (); 

  // Example: Split the dyn_arr_b[0]=ffffffff  to 
  // dyn_arr_a[0]=ff, dyn_arr_a[1]=ff , dyn_arr_a[2]=ff, dyn_arr_a[3]=ff.
  
  //Declare a packed array of size 32 bit named dyn_arr_b
  reg [31:0] dyn_arr_b;
  //Declare a multidimensional array dyn_arr_a as specified in the example
  reg [7:0] dyn_arr_a[3:0];

  initial 
    begin
      //create and randomize the dyn_arr_b ;
      dyn_arr_b = $random;
      //create and assign size for the dyn_arr_a
      //Write the logic (loops) to split the dyn_arr_b and assign the values to dyn_arr_a
      for(int i = 0; i<4; i++)
        begin
          dyn_arr_a[i] = dyn_arr_b[i*8 +: 8];
        end
      //Display both the arrays 
          $display("dyn_arr_b: %h", dyn_arr_b);
      for (int i = 0; i < 4; i++) begin
      $display("dyn_arr_a[%0d]: %h", i, dyn_arr_a[i]);
        end
  end
endmodule
