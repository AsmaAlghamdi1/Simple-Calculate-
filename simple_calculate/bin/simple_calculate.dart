import 'dart:io';

import 'package:simple_calculate/simple_calculate.dart' as simple_calculate;
import 'dart:io';
void main(List<String> arguments) {
  var num1;// Number 1
  var num2;// Number 2
  var choise;// To Know If The User Wants To Complete Or Not 
  var operation;// To Choose The Matamatical Operation 

  print("************** Simple Calculate **************\n");

  do {
      print("\n*********** Mathamatical Operation ***********\n");
      menu();//Matamatical Operation
      print("Plaese Enter The Number Of Calculation You Wish To Perform or 'Exit': ");
      operation = stdin.readLineSync();
      operation = num.tryParse(operation);

      while(operation==null){
        print("\nPlease Select The Number That Represent The Mathamatical Operation :");
        operation =stdin.readLineSync();   
        operation = num.tryParse(operation);
      }//End While

      if(operation!=null){//To Make Sure It's Not A String 
        while(operation==0||operation>6){
          print("\nPlease Select The Number That Represent The Mathamatical Operation : ");
          operation =stdin.readLineSync();
          operation = num.tryParse(operation);
          while (operation==null) {
            print("\nPlease Enter Number : ");
            operation =stdin.readLineSync();
            operation = num.tryParse(operation);
            }//End Inside While 
        }// End Out While
      }//End If

      if(operation==5){
        print("\nPlease Enter The Number To Find The Factorial : ");
        num1 = stdin.readLineSync();
        num1 = num.tryParse(num1);
        while(num1==null){
          print("\nPlease Enter Number : ");
          num1 = stdin.readLineSync();
          num1 = num.tryParse(num1);
        }//End While 
      }//End If

      else if (operation==6){
        print("\nExit the program!\n");
        exit(0);
      }
      else{
        print("\nPlease Enter The First Number : ");
        num1 = stdin.readLineSync();    
        num1 = num.tryParse(num1);
        while(num1==null){
          print("\nPlease Enter Number : ");
          num1 = stdin.readLineSync();
          num1 = num.tryParse(num1);
        }//End While 
        print("\nPlease Enter The Second Number : ");
        num2 = stdin.readLineSync();
        num2 = num.tryParse(num2);
        while(num2==null){
          print("\nPlease Enter Number : ");
          num2 = stdin.readLineSync();
          num2 = num.tryParse(num2);
        }//End While
      }//End Else 
  
       switch(operation){
        case 1 : Add(num1,num2);
        break;
        case 2 : sub(num1,num2);
        break;
        case 3 : mult(num1,num2);
        break;
        case 4 : div(num1,num2);
        break;
        case 5 : print("\n$num1! = ${fact(num1)}");
        break;       
      }
      print("\nDo You Want To View The Operation Again ?\nPlease Enter 'Y' For Yes or 'N' For No : ");
      choise = stdin.readLineSync();
        while(choise!='Y'&&choise!='y'&&choise!='N'&&choise!='n'){
        print("\nInvalid Input , Please Enter 'Y' For Yes Or 'N' For No : ");
        choise = stdin.readLineSync();
        }//End While 
} while (choise=='Y'||choise=='y');
  
}//End Main 

//---------------------Function----------------------


void menu()=>print("1 - Add operation \n2 - Subtract operation\n3 - multiplication operation\n4 - Divide operation\n5 - Factorial\n6 - Exit\n");
  
Add(x,y)=>print("\n$x + $y = ${x+y}\n");
   
sub(x,y)=>print("\n$x - $y = ${x-y}\n");

mult(x,y)=>print("\n$x * $y = ${x*y}\n");

div(x,y){ 
  while(y==0){
  print("Can't be divided by zero , Enter Another Number : ");
  y = stdin.readLineSync();
  y = num.parse(y);
  }
  print("\n$x / $y = ${x/y}\n");
}

fact(x)=>x<=1 ? 1 : x*fact(x-1);


