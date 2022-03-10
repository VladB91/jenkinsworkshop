# !/bin/bash
 
# Numbers for operations
echo "The two numbers selected in build are: $numberOne and $numberTwo"
 
# Operation selected
echo "Calculator operation selected: $operation"
 
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
echo "Result of $operation: $res"
