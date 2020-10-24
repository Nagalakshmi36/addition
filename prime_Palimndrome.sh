##!/bin/bash -x
echo "enter number"
read n
if [  $n -gt 99 ] && [ $n -lt 1000 ]
then
         for ((i=2;i<=$n*$n;i++))
        do
                while [ $(($n%i)) -eq 0  ]
                do
                        echo $i
                        n=$((n/$i))
                       primearray[$i]=$(($i))
                        if [ $((i%2)) -eq 0 ]
                        then
                                arreven[even]=$i
                                 ((even++))
                        fi
                        if [ $(($i%2)) -ne 0 ]
                        then
                              arrodd[odd]=$i
                               ((odd++))
                        fi
                         rem=0
                         rev=0
                         temp=$n
                         while [ $temp -ne 0 ]
                         do
                            rem=$(($temp%10))
                             rev=$(($rev*10+$rem))
                             temp=$(($temp/10))
                         done
                         if [ $rev -eq $n ]
                        then
                        echo "$n is palindrome"
                        else
                        echo "$n entered is not palindrome"
                        fi
                done
        done
        echo "prime numbers " ${primearray[@]}

        echo "array of even factors :" ${arreven[@]}
        echo "array of odd factors :" ${arrodd[@]}
fi
