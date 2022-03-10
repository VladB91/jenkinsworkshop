# !/bin/bash
 
# Take user Input
echo "The two numbers:"
echo $numberOne
echo $numberTwo
read numberOne
read numberTwo
 
# Input type of operation
echo "Choices:"
echo "Addition"
echo "Subtraction"
echo "Multiplication"
echo "Division"
read $operation
 
# Switch Case to perform
# calculator operations
case $operation in
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
