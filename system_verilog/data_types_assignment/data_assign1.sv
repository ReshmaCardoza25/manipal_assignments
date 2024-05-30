/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign1.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of associative array and queue data type 
***************************************************************************/
module data_assign1 (); // module name and file name same 
  
// Declared an associative array packet of type int and index type string
int  packet[string];
  
//Declared a unbounded queue of type int 
int q_int[$];
        
//Assigned values to the queue elements 
q_int = {500,1000,500,200,400,500,600,700,900,200,0};

initial 
  begin
    // Assigned values to the array elements
    packet["usb"] = 32;
    packet["sata"] = 4;
    packet["ethernet"] = 31;
    packet["PCIE"] = 2; 
    packet["PCI"] = 4;
    packet["AXI3"]=31; 
          
    // Display the size and values of all the array elements 
    // Add the array functions or methods to find the repeated values:
    // Delete the duplicate elements from the array
    // Display the size and value of the modified  array size in an empty function
    // Expected output is size is 4
    // packet  = `{32,4,31,2};
	foreach(packet[i]) begin
	 foreach(packet[j])
	  if(i != j && packet[i] == packet[j])
	   packet.delete(j);
	end	 

    //Assigned values to the queue elements 
    q_int = {500,1000,500,200,400,500,600,700,900,200,0};        
     

    //Display the size and values of all the queue elements 
    //Assign 10 multiple of 100s values to the existing queue.
   for(int i = 1; i<=10; i++) begin
	q_int.push_back(100*i);
   end
   $display("After adding 10 multiples of 100");
   $display("q_int size = %0d", q_int.size());
   foreach(q_int[i])
    $display("q_int[%0d} = %0d", i, q_int[i]);
   $display("\n"); 

    //Add the queue functions or methods to find the repeated values:
    //Delete the duplicate elements from the queue
    //Display the size and value of the modified queue in an empty function
    //Expected output is size is 8
    // q_int = `{500,1000,200,400,600,700,900,0}
	foreach(q_int[i]) begin
	  foreach(q_int[j])
	    if(i != j && q_int[i] == q_int[j])
		q_int.delete(j);
	end
	$display("After deleting repeated elements");
	$display("q_int size = %0d", q_int.size());
	foreach(q_int[i])
	  $display("q_int[%0d] = %0d", i, q_int[i]);

    #10 $finish;
  end
endmodule

Output:
# packet size=4
# packet[AXI3]=31
# packet[PCI]=4
# packet[PCIE]=2
# packet[usb]=32
# 
# 
# After adding 10 multiples of 100
# q_int size=21
# q_int[0]=500
# q_int[1]=1000
# q_int[2]=500
# q_int[3]=200
# q_int[4]=400
# q_int[5]=500
# q_int[6]=600
# q_int[7]=700
# q_int[8]=900
# q_int[9]=200
# q_int[10]=0
# q_int[11]=100
# q_int[12]=200
# q_int[13]=300
# q_int[14]=400
# q_int[15]=500
# q_int[16]=600
# q_int[17]=700
# q_int[18]=800
# q_int[19]=900
# q_int[20]=1000
# 
# 
# after deleting repeated elements
# q_int size=11
# q_int[0]=500
# q_int[1]=1000
# q_int[2]=200
# q_int[3]=400
# q_int[4]=600
# q_int[5]=700
# q_int[6]=900
# q_int[7]=0
# q_int[8]=100
# q_int[9]=300
# q_int[10]=800
