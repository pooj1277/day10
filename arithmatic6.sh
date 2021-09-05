#!/bin/bash 
uc1=1;
uc2=2;
uc3=3;
uc4=4;
echo "Enter three digits :"
read a b c

echo "--------------------"
echo "Three iputs from user are : $a, $b, $c"
echo "---------------------"
declare -A compute1 #declaring dictionary
declare -a Arrc  #declaring array
#initializing dictionary 
compute1[a+b*c]=""
compute1[a*b+c]=""
compute1[c+a/b]=""
compute1[a%b+c]=""

#function to compute  arithmatic and store result to dictionary
function computeArth(){
	#arth=$((RANDOM%5));
	case $i in
	$uc1)
	#echo "uc1"
	output=$(($a+$b*$c))
	#echo "a + b * c = " $output
	compute1[a+b*c]=$output
	;;
	$uc2)
	#echo "uc2"
   	output=$(($a*$b+$c))
   	#echo "a * b + c = " $output
	compute1[a*b+c]=$output
   	;;
	$uc3)
	#echo "uc3"
   	output=$(($c+$a/$b))
   	#echo "c + a / b = " $output
   	compute1[c+a/b]=$output
	;;
	$uc4)
	#echo "uc4"
   	output=$(($a%$b+$c))
   	#echo "a % b + c = " $output
	compute1[a%b+c]=$output
   	;;
   	*)
     	echo "break"
    	;;
	
	esac
	Arrc[i]="$output"
}

#running loop for making call to function for each case
for i in 1 2 3 4 
do
	computeArth $i
done

#printing keys and values from dictionary
for j in ${!compute1[@]}; do
 	echo $j ${compute1[$j]}
	#Arrc[$j]=${compute1[$j]}
	#echo ${Arrc[$j]}
done
echo ${Arrc[@]}

