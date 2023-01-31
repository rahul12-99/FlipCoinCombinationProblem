echo "Welcome to Flip Coin Combination Problem"

read -p "Enter the number of times to flip the singlet:" num
declare -A singletFlip

singletFlip[H]=0
singletFlip[T]=0

for(( flip = 1; flip <= num; flip++ ))
do
    echo -n "Flip number $flip is "
    (( count = RANDOM%2 ))
    case $count in
        0)
            echo "Heads"
            (( singletFlip[H]++ ))
            ;;
        1)
            echo "Tails"
            (( singletFlip[T]++ ))
    esac
done

for combination in ${!singletFlip[@]}
do
    percent=$(( ${singletFlip[$combination]}  * 100 / num ))
    singletFlip[$combination]=$percent
    echo "The percentage of $combination is ${singletFlip[$combination]}%"
done
