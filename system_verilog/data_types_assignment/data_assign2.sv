/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign2.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of associative array and functions 
***************************************************************************/
// Write a function to return a dynamic array of size 10 filled with random integers.
module data_assign2;

  //Part 1
  //ADD_CODE: Declare a function and input the size 
  //ADD_CODE: Inside the function declare and create the array
  //ADD_CODE: Use the appropriate loop to randomize the elemants of the array
	function void input_elements(int size, output int arr[]);
	  arr = new[size];
	   for(int i = 0; i < size; i++)
		arr[i] = $urandom_range(0, 100);
	endfunction

  //Part 2a
  //ADD_CODE: The array method to return the maximum value stored in the array

	function int max_value(int size, int array[], output int val);
	  for(int i = 0; i < size-1; i++)
	    if(array[i] > array[i+1]) begin
		array[i+1] = array[i];
		val = array[i+1];
	    end
	return val;
	endfunction
  //part 2b
  //ADD_CODE: Modify the Part 1 function to arrange the array with out array method
  //ADD_CODE: write a function to arrange the the array in the ascending order
  //HINT : using a loop you can compare the values of the array with previous value
	function void sort_array(int size, int array[], output int arr1[]);
	  int temp;
	  arr1 = new[size];
	  for(int i = 0; i < size; i++)
	    arr1[i] = array[i];
	  for(int i = 0; i< size-1; i++) begin
	    for(int j = i+1; j < size; j++) begin
		if(arr1[i] > arr1[j]) begin
		  temp = arr1[i];
	 	  arr1[i] = arr1[j];
		  arr1[j] = temp;
		end
	    end
	  end
	endfunction
	int size = 5;
	int array[];
	int max_val;
	int array1[];


  initial 
    begin
      repeat(30) begin
      //ADD_CODE: call the function
	 input_elements(size, array);
  //ADD_CODE: Display the elements of the dynamic array
	foreach(array[i])
	  $display("array[%0d] = %d", i, array[i]);
      //ADD_CODE: Display the array and the maximum value
	$display("array is %p", array);
	$display("The maximum value in array is %0d", max_value(size, array, max_val)); 
      //ADD_CODE: Display the maximum value of the array and second largest value in the array
	sort_array(size, array, array1);
	foreach(array1[i]) begin
	  $display("sorted array{%0d] = %d", i , array1[i]);
	end
	$display("Maximum value = %0d and second Maximum value = %0d", array1[size-1], array1[size-2]);
	end
    end
endmodule

Output:
# array[0] =          43
# array[1] =          76
# array[2] =          37
# array[3] =          14
# array[4] =          87
# array is '{43, 76, 37, 14, 87}
# The maximum value in array is 76
# sorted array{0] =          14
# sorted array{1] =          37
# sorted array{2] =          43
# sorted array{3] =          76
# sorted array{4] =          87
# Maximum value = 87 and second Maximum value = 76
# array[0] =          98
# array[1] =          91
# array[2] =          33
# array[3] =          91
# array[4] =          68
# array is '{98, 91, 33, 91, 68}
# The maximum value in array is 98
# sorted array{0] =          33
# sorted array{1] =          68
# sorted array{2] =          91
# sorted array{3] =          91
# sorted array{4] =          98
# Maximum value = 98 and second Maximum value = 91
# array[0] =          50
# array[1] =          69
# array[2] =          86
# array[3] =          72
# array[4] =          10
# array is '{50, 69, 86, 72, 10}
# The maximum value in array is 86
# sorted array{0] =          10
# sorted array{1] =          50
# sorted array{2] =          69
# sorted array{3] =          72
# sorted array{4] =          86
# Maximum value = 86 and second Maximum value = 72
# array[0] =          66
# array[1] =           3
# array[2] =          31
# array[3] =          82
# array[4] =          16
# array is '{66, 3, 31, 82, 16}
# The maximum value in array is 82
# sorted array{0] =           3
# sorted array{1] =          16
# sorted array{2] =          31
# sorted array{3] =          66
# sorted array{4] =          82
# Maximum value = 82 and second Maximum value = 66
# array[0] =           7
# array[1] =          33
# array[2] =           4
# array[3] =          22
# array[4] =          55
# array is '{7, 33, 4, 22, 55}
# The maximum value in array is 33
# sorted array{0] =           4
# sorted array{1] =           7
# sorted array{2] =          22
# sorted array{3] =          33
# sorted array{4] =          55
# Maximum value = 55 and second Maximum value = 33
# array[0] =          86
# array[1] =          45
# array[2] =          41
# array[3] =          74
# array[4] =          37
# array is '{86, 45, 41, 74, 37}
# The maximum value in array is 86
# sorted array{0] =          37
# sorted array{1] =          41
# sorted array{2] =          45
# sorted array{3] =          74
# sorted array{4] =          86
# Maximum value = 86 and second Maximum value = 74
# array[0] =          22
# array[1] =          98
# array[2] =          12
# array[3] =          80
# array[4] =          73
# array is '{22, 98, 12, 80, 73}
# The maximum value in array is 98
# sorted array{0] =          12
# sorted array{1] =          22
# sorted array{2] =          73
# sorted array{3] =          80
# sorted array{4] =          98
# Maximum value = 98 and second Maximum value = 80
# array[0] =          51
# array[1] =          45
# array[2] =          38
# array[3] =          31
# array[4] =          97
# array is '{51, 45, 38, 31, 97}
# The maximum value in array is 51
# sorted array{0] =          31
# sorted array{1] =          38
# sorted array{2] =          45
# sorted array{3] =          51
# sorted array{4] =          97
# Maximum value = 97 and second Maximum value = 51
# array[0] =          60
# array[1] =          56
# array[2] =          45
# array[3] =          47
# array[4] =          36
# array is '{60, 56, 45, 47, 36}
# The maximum value in array is 60
# sorted array{0] =          36
# sorted array{1] =          45
# sorted array{2] =          47
# sorted array{3] =          56
# sorted array{4] =          60
# Maximum value = 60 and second Maximum value = 56
# array[0] =          51
# array[1] =          17
# array[2] =          63
# array[3] =           0
# array[4] =          17
# array is '{51, 17, 63, 0, 17}
# The maximum value in array is 63
# sorted array{0] =           0
# sorted array{1] =          17
# sorted array{2] =          17
# sorted array{3] =          51
# sorted array{4] =          63
# Maximum value = 63 and second Maximum value = 51
# array[0] =           5
# array[1] =          55
# array[2] =          67
# array[3] =          61
# array[4] =          94
# array is '{5, 55, 67, 61, 94}
# The maximum value in array is 67
# sorted array{0] =           5
# sorted array{1] =          55
# sorted array{2] =          61
# sorted array{3] =          67
# sorted array{4] =          94
# Maximum value = 94 and second Maximum value = 67
# array[0] =           6
# array[1] =          78
# array[2] =          94
# array[3] =          60
# array[4] =          92
# array is '{6, 78, 94, 60, 92}
# The maximum value in array is 94
# sorted array{0] =           6
# sorted array{1] =          60
# sorted array{2] =          78
# sorted array{3] =          92
# sorted array{4] =          94
# Maximum value = 94 and second Maximum value = 92
# array[0] =          82
# array[1] =          16
# array[2] =           1
# array[3] =          97
# array[4] =          62
# array is '{82, 16, 1, 97, 62}
# The maximum value in array is 97
# sorted array{0] =           1
# sorted array{1] =          16
# sorted array{2] =          62
# sorted array{3] =          82
# sorted array{4] =          97
# Maximum value = 97 and second Maximum value = 82
# array[0] =          59
# array[1] =          30
# array[2] =          49
# array[3] =          65
# array[4] =          23
# array is '{59, 30, 49, 65, 23}
# The maximum value in array is 65
# sorted array{0] =          23
# sorted array{1] =          30
# sorted array{2] =          49
# sorted array{3] =          59
# sorted array{4] =          65
# Maximum value = 65 and second Maximum value = 59
# array[0] =          40
# array[1] =          15
# array[2] =           8
# array[3] =          80
# array[4] =          73
# array is '{40, 15, 8, 80, 73}
# The maximum value in array is 80
# sorted array{0] =           8
# sorted array{1] =          15
# sorted array{2] =          40
# sorted array{3] =          73
# sorted array{4] =          80
# Maximum value = 80 and second Maximum value = 73
# array[0] =          12
# array[1] =           2
# array[2] =          58
# array[3] =          77
# array[4] =          74
# array is '{12, 2, 58, 77, 74}
# The maximum value in array is 77
# sorted array{0] =           2
# sorted array{1] =          12
# sorted array{2] =          58
# sorted array{3] =          74
# sorted array{4] =          77
# Maximum value = 77 and second Maximum value = 74
# array[0] =          67
# array[1] =          36
# array[2] =          70
# array[3] =          71
# array[4] =          31
# array is '{67, 36, 70, 71, 31}
# The maximum value in array is 71
# sorted array{0] =          31
# sorted array{1] =          36
# sorted array{2] =          67
# sorted array{3] =          70
# sorted array{4] =          71
# Maximum value = 71 and second Maximum value = 70
# array[0] =          96
# array[1] =          14
# array[2] =          65
# array[3] =          31
# array[4] =          81
# array is '{96, 14, 65, 31, 81}
# The maximum value in array is 96
# sorted array{0] =          14
# sorted array{1] =          31
# sorted array{2] =          65
# sorted array{3] =          81
# sorted array{4] =          96
# Maximum value = 96 and second Maximum value = 81
# array[0] =          98
# array[1] =           0
# array[2] =          63
# array[3] =          80
# array[4] =          89
# array is '{98, 0, 63, 80, 89}
# The maximum value in array is 98
# sorted array{0] =           0
# sorted array{1] =          63
# sorted array{2] =          80
# sorted array{3] =          89
# sorted array{4] =          98
# Maximum value = 98 and second Maximum value = 89
# array[0] =         100
# array[1] =           5
# array[2] =          88
# array[3] =          68
# array[4] =          26
# array is '{100, 5, 88, 68, 26}
# The maximum value in array is 100
# sorted array{0] =           5
# sorted array{1] =          26
# sorted array{2] =          68
# sorted array{3] =          88
# sorted array{4] =         100
# Maximum value = 100 and second Maximum value = 88
# array[0] =         100
# array[1] =          39
# array[2] =          20
# array[3] =          13
# array[4] =          62
# array is '{100, 39, 20, 13, 62}
# The maximum value in array is 100
# sorted array{0] =          13
# sorted array{1] =          20
# sorted array{2] =          39
# sorted array{3] =          62
# sorted array{4] =         100
# Maximum value = 100 and second Maximum value = 62
# array[0] =          64
# array[1] =          28
# array[2] =          70
# array[3] =          65
# array[4] =          88
# array is '{64, 28, 70, 65, 88}
# The maximum value in array is 70
# sorted array{0] =          28
# sorted array{1] =          64
# sorted array{2] =          65
# sorted array{3] =          70
# sorted array{4] =          88
# Maximum value = 88 and second Maximum value = 70
# array[0] =          98
# array[1] =          28
# array[2] =          89
# array[3] =           7
# array[4] =          10
# array is '{98, 28, 89, 7, 10}
# The maximum value in array is 98
# sorted array{0] =           7
# sorted array{1] =          10
# sorted array{2] =          28
# sorted array{3] =          89
# sorted array{4] =          98
# Maximum value = 98 and second Maximum value = 89
# array[0] =          88
# array[1] =          99
# array[2] =          46
# array[3] =          16
# array[4] =          68
# array is '{88, 99, 46, 16, 68}
# The maximum value in array is 99
# sorted array{0] =          16
# sorted array{1] =          46
# sorted array{2] =          68
# sorted array{3] =          88
# sorted array{4] =          99
# Maximum value = 99 and second Maximum value = 88
# array[0] =          69
# array[1] =          14
# array[2] =          20
# array[3] =          84
# array[4] =           0
# array is '{69, 14, 20, 84, 0}
# The maximum value in array is 84
# sorted array{0] =           0
# sorted array{1] =          14
# sorted array{2] =          20
# sorted array{3] =          69
# sorted array{4] =          84
# Maximum value = 84 and second Maximum value = 69
# array[0] =           3
# array[1] =          89
# array[2] =           3
# array[3] =          98
# array[4] =          60
# array is '{3, 89, 3, 98, 60}
# The maximum value in array is 98
# sorted array{0] =           3
# sorted array{1] =           3
# sorted array{2] =          60
# sorted array{3] =          89
# sorted array{4] =          98
# Maximum value = 98 and second Maximum value = 89
# array[0] =          53
# array[1] =           6
# array[2] =          91
# array[3] =          73
# array[4] =          16
# array is '{53, 6, 91, 73, 16}
# The maximum value in array is 91
# sorted array{0] =           6
# sorted array{1] =          16
# sorted array{2] =          53
# sorted array{3] =          73
# sorted array{4] =          91
# Maximum value = 91 and second Maximum value = 73
# array[0] =          30
# array[1] =          30
# array[2] =           3
# array[3] =          32
# array[4] =          62
# array is '{30, 30, 3, 32, 62}
# The maximum value in array is 30
# sorted array{0] =           3
# sorted array{1] =          30
# sorted array{2] =          30
# sorted array{3] =          32
# sorted array{4] =          62
# Maximum value = 62 and second Maximum value = 32
# array[0] =          30
# array[1] =          93
# array[2] =          27
# array[3] =          72
# array[4] =          43
# array is '{30, 93, 27, 72, 43}
# The maximum value in array is 93
# sorted array{0] =          27
# sorted array{1] =          30
# sorted array{2] =          43
# sorted array{3] =          72
# sorted array{4] =          93
# Maximum value = 93 and second Maximum value = 72
# array[0] =          37
# array[1] =          81
# array[2] =          28
# array[3] =          36
# array[4] =          15
# array is '{37, 81, 28, 36, 15}
# The maximum value in array is 81
# sorted array{0] =          15
# sorted array{1] =          28
# sorted array{2] =          36
# sorted array{3] =          37
# sorted array{4] =          81
# Maximum value = 81 and second Maximum value = 37
