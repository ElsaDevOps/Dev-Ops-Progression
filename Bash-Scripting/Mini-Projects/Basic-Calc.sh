#!/bin/bash

Basic_Calc(){
    
     echo "Enter first number:"
     read num1
     
     echo "Enter second number:"
     read num2

      

if [[ ! $num1 =~ ^[0-9]+$ || ! $num2 =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter numbers only."
    exit 1
 fi
      
      add=$((num1 + num2))
      sub=$((num1 - num2))
      mult=$((num1 * num2))

if [[  $num1 -eq 0 || $num2 -eq 0 ]]; then
   
    echo "Here are your answers:
         $add
         $sub
         $mult
         Division by 0 is not possible."
    exit 1
 fi
      
      add=$((num1 + num2))
      sub=$((num1 - num2))
      mult=$((num1 * num2))
      div=$((num1 / num2))

    echo "Here are your answers:
           $add
           $sub
           $mult
           $div"


}
Basic_Calc

#This is a calculator, which takes an input of two numbers and performs addition, subreaction, multiplication and division with them.
