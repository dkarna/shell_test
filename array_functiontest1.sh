s#!/bin/bash

declare -a bj_cards=("A.1" "A.2" "A.3" "A.4" "J.1" "J.2" "J.3" "J.4" "2.1" "2.2" "2.3" "2.4" "3.1" "3.2" "3.3" "3.4" "4.1" "4.2" "4.3" "4.4" "5.1" "5.2" "5.3" "5.4" "6.1" "6.2" "6.3" "6.4" "7.1" "7.2" "7.3" "7.4" "8.1" "8.2" "8.3" "8.4" "9.1" "9.2" "9.3" "9.4" "10.1" "10.2" "10.3" "10.4" "Q.1" "Q.2" "Q.3" "Q.4" "K.1" "K.2" "K.3" "K.4")
declare -a bj_values=(1 1 1 1 10 10 10 10 2 2 2 2 3 3 3 3 4 4 4 4 5 5 5 5 6 6 6 6 7 7 7 7 8 8 8 8 9 9 9 9 10 10 10 10 10 10 10 10 10 10 10 10)

option="y"
choice=0

declare -a pl_cards # array to store player card names
declare -a pl_values # array to store player card values
declare -a deal_cards # array to store dealer card names
declare -a deal_values # array to store dealer card values
pl_count=0 # player count reached at some instance
dl_count=0 # dealer count reached at some instance
j=0
bet_amt=0.0 # bet amount put forward by a player

declare -a playing_cards #=("${bj_cards[@]}") # declaration of playing set of cards array

echo "bj_cards: ${bj_cards[@]}"
#echo "playing_cards: ${playing_cards[@]}"

num=$(( ${#bj_cards[@]} -1 )) # count for total number of cards

# function to display the menu

function displayMenu
{
	echo "Here are your options: "
	echo "1. Shuffle the card."
	echo "2. Place the bet."
	echo "3. Deal the card."
	echo "4. Quit the game."
	echo "Enter your options (1/2/3/4):"
	read choice
}

# function for shuffling cards

function cardShuffle
{
	newseq=$( shuf -i 0-$num )
	for i in $newseq;
	do
		playing_cards[$j]="${bj_cards[$i]}"
		j=`expr $j + 1 `
	done		
}

# function for dealing cards

function dealCards
{
	# 2 cards to player first
	pl_cards[0]=${playing_cards[0]}
	pl_cards[1]=${playing_cards[1]}
	pl_values[0]=$( getValueForCard "${pl_cards[0]}" )
	pl_values[1]=$( getValueForCard "${pl_cards[1]}" )

	# 2 cards to dealer
	deal_cards[0]=${playing_cards[2]}
	deal_cards[1]=${playing_cards[3]}
	deal_values[0]=$( getValueForCard "${deal_cards[0]}" )
	deal_values[1]=$( getValueForCard "${deal_cards[1]}" )
	playing_cards=(${playing_cards[@]:4})
	echo "${playing_cards[@]}"
	echo "Player Cards: ${pl_cards[@]}"
	echo "Player Card values: ${pl_values[@]}"
	echo "Dealer Cards: ${deal_cards[@]}"
	echo "Dealer Card values: ${deal_values[@]}"
}

# function for counting the values


# function for putting bets


# function for checking blackjack rules and declaring decisions


# function for showing the playing card sets

function displayPlayingCards
{
	cnt=${#playing_cards[*]}
	for card in ${playing_cards[@]}
	do
		echo "$card"
	done
}

# function for getting value for the card

function getValueForCard
{
	valcard=$1
	cardval=0
	index=0
	cnt=${#playing_cards[*]}
	for card in ${bj_cards[@]}
	do
		if [[ "$valcard" = "$card" ]]
		then
			cardval=${bj_values[$index]}
			break
		else
			index=`expr $index + 1`
		fi
	done
	#echo "Your input card is: $1 whose value is: $cardval"
	echo "$cardval"
}


# Start of menu part of main program

while :
do
	#clear
	displayMenu
	
	case "$choice" in 
		1) cardShuffle
			displayPlayingCards
			;;
		2) 	displayPlayingCards
			exit
			;;
		*) echo "No friendly option"
			;;
	esac
	
	echo "Continue?(y/n)"
	read option

	if [[ "$option" = "n" ]]
	then
		exit
	fi
done



#cardval=$( getValueForCard "J.1" ) 
#echo "Card value is: $cardval"
#dealCards
