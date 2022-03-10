# !/bin/bash
 
# Take user Input
echo "The two numbers:"
echo $numberOne
echo $numberTwo
 
# Input type of operation
echo "Choices:"
echo "Addition"
echo "Subtraction"
echo "Multiplication"
echo "Division"
 
# Switch Case to perform
# calculator operations
if [[ $operation -eq "Addition" ]]
then
  res=`echo $numberOne + $numberTwo | bc`
elif [[ $operation -eq "Subtraction" ]]
then
  res=`echo $numberOne - $numberTwo | bc`
elif [[ $operation -eq "Multiplication" ]]
then
  res=`echo $numberOne \* $numberTwo | bc`
elif [[ $operation -eq "Division" ]]
then
  res=`echo "scale=2; $numberOne / $numberTwo" | bc`
else
  echo "Operation not valid."
fi
echo "Result : $res"
