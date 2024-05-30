o/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign3_bug.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of new assignment in dynamic array  
***************************************************************************/
// Clue is the creation and assigning the size  of dynamic array 
module data_assign3_bug;
int arr[];
int packet = 10;
        
initial 
  begin  
    //Declaring the size of the dynamic array   
    arr = new[2];
    arr = new[3] (arr[i]);  

    //Assigning values to the array 
    foreach(arr[i])
      begin
        arr[i] = packet + 5;
        packet += 5;
              $display("arr[%0d] =%0d",i,arr[i]);
      end
    end
endmodule

Output:
# arr[0] =15
# arr[1] =20
# arr[2] =25
