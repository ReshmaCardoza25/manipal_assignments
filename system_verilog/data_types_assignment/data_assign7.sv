/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign7.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of associative array and queue data type 
***************************************************************************/
module data_assign7;
	typedef bit[7:0] queue[$];
	int temp;

  //ADD_CODE: Declare a queue with unbounded value off type bit[7:0]
	bit [7:0]q_array[$];
 
 //ADD_CODE: Write a function to assign 15 random values to the queue
	function queue insert_random(input bit [7:0]array[$], int size);
	  for(int i = 0; i < size; i++) begin
	    array[i] = $random;
	  end
	  return array;
	endfunction

  //ADD_CODE: Display all the elements of the queue and size of the queue
  //ADD_CODE: Write a function to reverse the elements of the queue without queue method
	function queue reverse(input bit [7:0]array[$]);
	  for(int i = 0; i < array.size()/2; i++) begin
	    temp = array[i];
	    array[i] = array[array.size()-1-i];
	    array[array.size()-1-i] = temp;
	  end
	  return array;
	endfunction
  initial 
    begin
	q_array = insert_random(q_array, 15);
	$display("Size of the queue id %d", q_array.size());
	$write("The elelments of the queue:");
	foreach(q_array[i]) begin
	  $write("%d ", q_array[i]);
	end
	$display ();
	
      //ADD_CODE:ADD a queue method to reverse the elements of the code
	q_array. reverse();

      //ADD_CODE: HINT Add loops
      //ADD_CODE: Display the reversed queue elements and size
	$write("The elements of the queue after reversing ");
	foreach(q_array[i]) begin
	  $write("%d", q_array[i]);
	end

      //ADD_CODE: Call the function to display the reverse elements of the above queue
	q_array = reverse(q_array[i]);	

      //ADD_CODE: Display the elements. The queue elements matches with original value
	$write("The elements of the queue after reversing ");
	foreach(q_array[i]) begin
	  $write("%d", q_array[i]);
	end
	$display();

    end
endmodule

Output:

