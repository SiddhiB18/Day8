declare -A dice

dice[1]=0
dice[2]=0
dice[3]=0
dice[4]=0
dice[5]=0
dice[6]=0

count=10
while [ 1 ]
do
 result=$((RANDOM%6 + 1 ))
    (( dice[$result]++))

    if((dice[$result] == count))
    then
        break
    fi
done

maxKey=$(( RANDOM%6 + 1 ))
minKey=$(( RANDOM%6 + 1 ))

for number in ${!dice[@]}
do

    if(( dice[$number] >= dice[$maxKey] ))
    then
        maxKey=$number
    fi


    if(( dice[$number] <= dice[$minKey] ))
    then
        minKey=$number
    fi

    echo $number " " ${dice[$number]}
done
echo "The number that reached maximum times is $maxKey"
echo "The number that reached minimum times is $minKey"
