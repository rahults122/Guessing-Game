#/usr/bin/rah bash


number=$(($$ % $biggest))

function guessing(){
    true_ans=$(ls -l |wc -l)
    while true;
    do
        echo "please enter your guess number"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "your guess is Less then the true number"
        elif [ $number -gt $true_ans ]
        then
            echo "your guess is Greater then the true number"
        else
            echo " WOW !!!!You are Right!"
        
        fi
guesses=$(($guesses + 1))
    done
}
echo "Guess Number in the file"
guessing