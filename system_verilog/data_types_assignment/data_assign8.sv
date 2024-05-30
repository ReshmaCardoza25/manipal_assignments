/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign8.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of associative array and dynamic array differences
***************************************************************************/
module data_assign8 (); // module name and file name same
	typedef int dynamic_array[];  
  //ADD_CODE: Declare a dynamic array of dyn_arr
	int dyn_arr[];

  //ADD_CODE: Declare the the size of an array
  //ADD_CODE: write a function to assign even values to the first 50 elements of the array
	function dynamic_array insert_even_dyn(int arr[]);
	  for(int i = 0; i < 50; i++) begin
	    arr[i] = i*2;
	  end
	  return arr;
	endfunction;

  //ADD_CODE: Display the value of the array 
  //ADD_CODE: Now write another function to add odd values to the last 50 elements 
  //ADD_CODE: Display all the 100 elements of the array
	function dynamic_array insert_odd_dyn(int arr[]);
	  for(int i = 50; i < 100; i++) begin
	    arr[i] = i*2;
	  end
	  return arr;
	endfunction 

 //ADD_CODE: Write a method to delete the 90th element of the array
  //ADD_CODE: Write a method to delete the compelte array

  //Please repeat the same code with associative array with name assoc_arr and compare your findings
typedef int assoc_array[int];
 
  //ADD_CODE: Declare a associative array of dyn_arr

  int assoc_arr[int];
 
  //ADD_CODE: write a function to assign even values to the first 50 elements of the associative array

  function assoc_array insert_even_assoc(int arr[int]);
    for(int i=0; i<50; i++)  begin
        arr[i] = i*2;
      end
    return arr;
  endfunction
 
  //ADD_CODE: Now write another function to add odd values to the last 50 elements
  function assoc_array insert_odd_assoc(int arr[int]);
    for(int i=50; i<100; i++)  begin
        arr[i] = i*2;
      end
    return arr;
  endfunction
 
  initial
    begin
      //ADD_CODE: Declare the the size of an array
          dyn_arr = new[100];
 
      //assigning values to the array

      dyn_arr = insert_even_dyn(dyn_arr);
      dyn_arr = insert_odd_dyn(dyn_arr);
 
      //ADD_CODE: Display all the 100 elements of the array
      $write("The elements of the dynamic array are: ");
      for(int i=0; i<dyn_arr.size(); i++)  begin
          $write("%d ,", dyn_arr[i]);
        end
      $display();
 
      //ADD_CODE: Write a method to delete the 90th element of the array
      for(int i=89; i<dyn_arr.size() - 1; i++)  begin
          dyn_arr[i] = dyn_arr[i+1];
        end
      dyn_arr = new[99] (dyn_arr);
 
      //ADD_CODE: Display all the 100 elements of the array
      $write("The elements of the dynamic array after deleting 90th element are: ");
      for(int i=0; i<dyn_arr.size(); i++)  begin
          $write("%d ,", dyn_arr[i]);
        end
      $display();
 
      //ADD_CODE: Write a method to delete the compelte array
      dyn_arr.delete();
 
      //ADD_CODE: Display all the 100 elements of the array
      $write("The elements of the dynamic array after deleting entire array are: ");
      for(int i=0; i<dyn_arr.size(); i++)  begin
          $write("%d ,", dyn_arr[i]);
        end
      $display();
 
 
      //Please repeat the same code with associative array with name assoc_arr and compare your findings
      //assigning values to the array
      assoc_arr = insert_even_assoc(assoc_arr);
      assoc_arr = insert_odd_assoc(assoc_arr);
 
      //ADD_CODE: Display all the 100 elements of the array
      $write("The elements of the associative array are: ");
      foreach (assoc_arr[i])  begin
          $write("%d ,", assoc_arr[i]);
        end
      $display();
 
      //ADD_CODE: Write a method to delete the 90th element of the array
      assoc_arr.delete(89);
 
      //ADD_CODE: Display all the 100 elements of the array
      $write("The elements of the associative array after deleting 90th element: ");
      foreach (assoc_arr[i])  begin
          $write("%d ,", assoc_arr[i]);
        end
      $display();
 
      //ADD_CODE: Write a method to delete the compelte array
      assoc_arr.delete();
 
      //ADD_CODE: Display all the 100 elements of the array
      $write("The elements of the associative array after deleting entire array: ");
      foreach (assoc_arr[i])  begin
          $write("%d ,", assoc_arr[i]);
        end
      $display();
    end
endmodule


Output:
# The elements of the dynamic array are:           0 ,          2 ,          4 ,          6 ,          8 ,         10 ,         12 ,         14 ,         16 ,         18 ,         20 ,         22 ,         24 ,         26 ,         28 ,         30 ,         32 ,         34 ,         36 ,         38 ,         40 ,         42 ,         44 ,         46 ,         48 ,         50 ,         52 ,         54 ,         56 ,         58 ,         60 ,         62 ,         64 ,         66 ,         68 ,         70 ,         72 ,         74 ,         76 ,         78 ,         80 ,         82 ,         84 ,         86 ,         88 ,         90 ,         92 ,         94 ,         96 ,         98 ,        100 ,        102 ,        104 ,        106 ,        108 ,        110 ,        112 ,        114 ,        116 ,        118 ,        120 ,        122 ,        124 ,        126 ,        128 ,        130 ,        132 ,        134 ,        136 ,        138 ,        140 ,        142 ,        144 ,        146 ,        148 ,        150 ,        152 ,        154 ,        156 ,        158 ,        160 ,        162 ,        164 ,        166 ,        168 ,        170 ,        172 ,        174 ,        176 ,        178 ,        180 ,        182 ,        184 ,        186 ,        188 ,        190 ,        192 ,        194 ,        196 ,        198 , 
# The elements of the dynamic array after deleting 90th element are:           0 ,          2 ,          4 ,          6 ,          8 ,         10 ,         12 ,         14 ,         16 ,         18 ,         20 ,         22 ,         24 ,         26 ,         28 ,         30 ,         32 ,         34 ,         36 ,         38 ,         40 ,         42 ,         44 ,         46 ,         48 ,         50 ,         52 ,         54 ,         56 ,         58 ,         60 ,         62 ,         64 ,         66 ,         68 ,         70 ,         72 ,         74 ,         76 ,         78 ,         80 ,         82 ,         84 ,         86 ,         88 ,         90 ,         92 ,         94 ,         96 ,         98 ,        100 ,        102 ,        104 ,        106 ,        108 ,        110 ,        112 ,        114 ,        116 ,        118 ,        120 ,        122 ,        124 ,        126 ,        128 ,        130 ,        132 ,        134 ,        136 ,        138 ,        140 ,        142 ,        144 ,        146 ,        148 ,        150 ,        152 ,        154 ,        156 ,        158 ,        160 ,        162 ,        164 ,        166 ,        168 ,        170 ,        172 ,        174 ,        176 ,        180 ,        182 ,        184 ,        186 ,        188 ,        190 ,        192 ,        194 ,        196 ,        198 , 
# The elements of the dynamic array after deleting entire array are:  
# The elements of the associative array are:           0 ,          2 ,          4 ,          6 ,          8 ,         10 ,         12 ,         14 ,         16 ,         18 ,         20 ,         22 ,         24 ,         26 ,         28 ,         30 ,         32 ,         34 ,         36 ,         38 ,         40 ,         42 ,         44 ,         46 ,         48 ,         50 ,         52 ,         54 ,         56 ,         58 ,         60 ,         62 ,         64 ,         66 ,         68 ,         70 ,         72 ,         74 ,         76 ,         78 ,         80 ,         82 ,         84 ,         86 ,         88 ,         90 ,         92 ,         94 ,         96 ,         98 ,        100 ,        102 ,        104 ,        106 ,        108 ,        110 ,        112 ,        114 ,        116 ,        118 ,        120 ,        122 ,        124 ,        126 ,        128 ,        130 ,        132 ,        134 ,        136 ,        138 ,        140 ,        142 ,        144 ,        146 ,        148 ,        150 ,        152 ,        154 ,        156 ,        158 ,        160 ,        162 ,        164 ,        166 ,        168 ,        170 ,        172 ,        174 ,        176 ,        178 ,        180 ,        182 ,        184 ,        186 ,        188 ,        190 ,        192 ,        194 ,        196 ,        198 , 
# The elements of the associative array after deleting 90th element:           0 ,          2 ,          4 ,          6 ,          8 ,         10 ,         12 ,         14 ,         16 ,         18 ,         20 ,         22 ,         24 ,         26 ,         28 ,         30 ,         32 ,         34 ,         36 ,         38 ,         40 ,         42 ,         44 ,         46 ,         48 ,         50 ,         52 ,         54 ,         56 ,         58 ,         60 ,         62 ,         64 ,         66 ,         68 ,         70 ,         72 ,         74 ,         76 ,         78 ,         80 ,         82 ,         84 ,         86 ,         88 ,         90 ,         92 ,         94 ,         96 ,         98 ,        100 ,        102 ,        104 ,        106 ,        108 ,        110 ,        112 ,        114 ,        116 ,        118 ,        120 ,        122 ,        124 ,        126 ,        128 ,        130 ,        132 ,        134 ,        136 ,        138 ,        140 ,        142 ,        144 ,        146 ,        148 ,        150 ,        152 ,        154 ,        156 ,        158 ,        160 ,        162 ,        164 ,        166 ,        168 ,        170 ,        172 ,        174 ,        176 ,        180 ,        182 ,        184 ,        186 ,        188 ,        190 ,        192 ,        194 ,        196 ,        198 , 
# The elements of the associative array after deleting entire array:
