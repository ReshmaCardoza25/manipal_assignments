/************************************************************************
Author: Mirafra Technologies Pvt Limited
        By Priya Ananthakrishnan
Filename:	data_assign1.sv  
Date:   	21st May 2022
Version:	1.0
Description: Concept of queue methods 
***************************************************************************/
// Without execution of the code diaplay the values 
module queue();
int a[$]={1,2,3}; //creation of queue
int b[$]={4,5,6,7};
int j=4;
int popped_f,popped_b;
initial
  begin
    a.insert(2,j);
    $display(a); // 1 2 3 4
    
    a.delete(2);
    $display(a); // 1 2 3
    
    a.push_front(10);  // 10 1 2 3
    $display(a);
    a.push_back(20);  //10  1 2 3 20
    $display(a);
    popped_f=a.pop_front();  
    $display(popped_f); //10
    $display(a);  //1 2 3 20
    popped_b=b.pop_back();  
    $display(b);  // 4 5 6
    $display(popped_b);  //7
    
    foreach(a[i])
      $write(a[i]);
    $display();  // 4 5 6
    
    foreach(b[i])
      $write(b[i]);
    $display();  //empty
    
    a.delete();
    $display(a);
  end
endmodule

Output:
# 1 2 4 3
# 1 2 3
# 10 1 2 3
# 10 1 2 3 20
#          10
# 1 2 3 20
# 4 5 6
#           7
#           1          2          3         20 
#           4          5          6 
# 
