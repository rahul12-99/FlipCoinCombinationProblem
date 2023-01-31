echo "Welcome to Flip Coin Combination Problem"

read -p "Enter the number of times to flip the singlet: " num
declare -A singletFlip

singletFlip[H]=0
singletFlip[T]=0
echo -e "\n"
echo "The following is calculation of singlet combination"

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
    echo "The percentage of $combination is $percent%"
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
	echo -n "Flip number $flip is "
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
        echo "The percentage of $combination is $percent%"
done

echo -e "\n"
echo "The following is calculation of triplet combination"

declare -A tripletFlip

tripletFlip[HHH]=0
tripletFlip[HHT]=0
tripletFlip[HTH]=0
tripletFlip[THH]=0
tripletFlip[HTT]=0
tripletFlip[THT]=0
tripletFlip[TTH]=0
tripletFlip[TTT]=0

for(( flip = 1; flip <= num; flip++ ))
do
    echo -n "Flip number $flip is "
	(( counter1 = RANDOM%2 ))
        (( counter2 = RANDOM%2 ))
        (( counter3 = RANDOM%2 ))

        case $counter1$counter2$counter3 in
        	000)
            		echo "Heads Heads Heads"
            		(( tripletFlip[HHH]++ ))
            		;;
        	001)
            		echo "Heads Heads Tails"
            		(( tripletFlip[HHT]++ ))
            		;;
        	010)
            		echo "Heads Tails Heads"
            		(( tripletFlip[HTH]++ ))
            		;;
        	011)
            		echo "Heads Tails Tails"
            		(( tripletFlip[HTT]++ ))
            		;;
        	100)
            		echo "Tails Heads Heads"
            		(( tripletFlip[THH]++ ))
            		;;
        	101)
            		echo "Tails Heads Tails"
            		(( tripletFlip[THT]++ ))
            		;;
        	110)
            		echo "Tails Tails Heads"
            		(( tripletFlip[TTH]++ ))
            		;;
        	111)
           		echo "Tails Tails Tails"
            		(( tripletFlip[TTT]++ ))
            		;;
    	esac
done
for combination in ${!tripletFlip[@]}
do
    percent=$(( ${tripletFlip[$combination]}  * 100 / num ))
    echo "The percentage of $combination is $percent%"
done

