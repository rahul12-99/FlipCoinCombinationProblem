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

echo -e "\n"

declare -A doubletFlip

doubletFlip[HH]=0
doubletFlip[HT]=0
doubletFlip[TT]=0
doubletFlip[HH]=0
echo "The following is calculation of doublet combination"

for(( flip = 1; flip <= num; flip++ ))
do
	echo -n "Flip number of $flip is "
        ((counter1 = RANDOM%2))
        ((counter2 = RANDOM%2))

        case $counter1$counter2 in
        	00)
            		echo "Heads Heads"
            		(( doubletFlip[HH]++ ))
            		;;
        	01)
            		echo "Heads Tails"
            		(( doubletFlip[HT]++ ))
            		;;
        	10)
            		echo "Tails Heads"
            		(( doubletFlip[TH]++ ))
            		;;
        	11)
            		echo "Tails Tails"
            		(( doubletFlip[TT]++ ))
            		;;
    	esac
done

for combination in ${!doubletFlip[@]}
do
	percent=$(( ${doubletFlip[$combination]}  * 100 / num ))
        doubletFlip[$combination]=$percent
        echo "The percentage of $combination is ${doubletFlip[$combination]}%"
done
