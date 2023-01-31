echo "Welcome to Flip Coin Combination Problem"

flip=$(( RANDOM%2 ))
if(( flip == 0 ))
then
    echo "Heads"
else
    echo "Tails"
fi
