#!/bin/bash
echo "Enter three digits :"
read a b c

echo "--------------------"
echo "Three iputs from user are : $a, $b, $c"
output=$((c+a/b))
echo "c + a / b = " $output
