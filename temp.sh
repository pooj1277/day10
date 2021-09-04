#!/bin/bash
#Solving using Switch Case Statement
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
empCheck=$((RANDOM%3));
case $empCheck in
$isFullTime)
        empHrs=8
        echo "Employee is working full time at wage: "
        ;;
$isPartTime)
        empHrs=4
        echo "Employee is working part time at wage: "
        ;;
*)
empHrs=0
;;
esac
salary=$(($empHrs*$empRatePerHr));
echo $salary

