/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign9.sv  
Date:   	24th May 2024
Version:	1.0
Description: Concept of associative array and queue data type 
***************************************************************************/
module data_assign9 (); // module name and file name same 
  //ADD_CODE: Declare an empty function 
  function empty();
  endfunction
  //ADD_CODE: Declare arrays A and B and size as 10 
  int a[10], b[10];
  //ADD_CODE: Assign 10 random integers between 1 and 20 values to them.
  
  //ADD_CODE: Declare the third Array AB
  int ab[$];
  int bc[$];
  //ADD_CODE: Create a 3rd array AB by comparing the two elements of array A and B 
  //ADD_CODE: Copy all the unique elements of the arraysA and B to the array AB

  //Example: 
  //A = [1, 8, 5, 6, 7, 1, 5, 9, 17], 
  //B = [2, 3, 5, 11, 13, 19, 11, 8, 7, 11] then
  //AB = [1, 2, 3, 5, 6, 7, 8, 9, 11, 13, 17, 19]
  
  function display();
    begin
      $display(" A = %p", a);
      $display(" B = %p", b);
      $display(" AB = %p",ab);
    end
  endfunction

//module array_module;
  initial 
    begin
      for(int i = 0; i<10; i++)
      begin
        a[i] = $urandom_range(1,20);
        b[i] = $urandom_range(1,20);
      end
      repeat (10)
	begin
        //ADD_CODE: Call the function
          empty();
          bc = {a,b};
          ab = bc.unique();
        //ADD_CODE: Display the all three array elements
          display();
          $display();
        end
    end
endmodule

