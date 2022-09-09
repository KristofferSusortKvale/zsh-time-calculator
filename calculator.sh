#!/bin/zsh

time1=(${(s/:/)1})
time2=(${(s/:/)2})

hours1=$(( $time1[1] * 100 + $time1[2] * 100 / 60 ))
hours2=$(( $time2[1] * 100 + $time2[2] * 100 / 60 ))

fullHours=$(( $hours2 / 100 - $hours1 / 100 ))
decimalHours=$(( $hours2 - $hours1 - $fullHours * 100 ))

if (( $decimalHours < 0 ))
then
    echo "$(( $fullHours - 1 )).$(( 100 + $decimalHours ))"
else
    echo "$fullHours.$decimalHours"
fi
