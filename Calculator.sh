# !/bin/bash
 
# Take user Input
echo "The two numbers:"
echo $numberOne
echo $numberTwo
read numberOne
read numberTwo
 
# Input type of operation
echo "Enter Choice :"
echo "1. $Addition"
echo "2. $Subtraction"
echo "3. $Multiplication"
echo "4. $Division"
read ch
 
# Switch Case to perform
# calculator operations
case $ch in
  1)res=`echo $numberOne + $numberTwo | bc`
  ;;
  2)res=`echo $numberOne - $numberTwo | bc`
  ;;
  3)res=`echo $numberOne \* $numberTwo | bc`
  ;;
  4)res=`echo "scale=2; $numberOne / $numberTwo" | bc`
  ;;
esac
echo "Result : $res"
