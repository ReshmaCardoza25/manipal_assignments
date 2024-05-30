/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign4.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of structure data type 
***************************************************************************/
//Declare the struct with name money as typedef
//Store coins as type int and rupees as real

module data_assign4;
 //To create the instance of the structure

  initial 
    begin
      //Assign directvalues to the structure variables
	$display("Initial values:");
	money_t.coins = 4;
	money_t.rupees = 100;

      //Display the values of the memebers
	$display("Coins = %d, Rupees = %f", money_t.coins, money_t.rupees);    

      //Assign values using the memebers name
	$display("Updated Values");
	money_t.coins = 4;
	money_t.rupees = 12.4;

      //Display the values 
	$display("coins = %d, rupees = %f" money_t.coins, money_t.rupees);
      //Assign all elements of structure to zero
	$display("values after assigning to zero:");
	money_t.coins = 0;
	money_t.rupees = 0;

      //Display the values 
	$display("Coins = %d. Rupees = %f", money_t.coins, money_t.rupees);
  end
endmodule

Output:
# Initial Values:
# coins =           4,rupees = 100.000000
# Updated Values:
# coins =           4,rupees = 12.400000
# Values after assigning to zero:
# coins =           0,rupees = 0.000000
