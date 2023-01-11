#! /bin/bash


function player1 {
  echo -p "Player 1. please enter your guess: "
  read player1
}
function player2 {
  choice=$(($RANDOM%3))
  if [ $choice == 0 ]
  then 
	  player2="rock"
  elif [ $choice == 1 ]
  then 
	  player2="scissors"
  else
	  player2="paper"
	  fi
}
function compare {
  if [[ $player1 == $player2 ]]; then
    echo "Its a Tie"
  elif [[ $player1 ==  "rock" && $player2 == "scissors" ]]; then
    echo "Player 1 Wins"
  elif [[ $player1 == "sissors" && $player2 == "rock" ]]; then
    echo "Player 2 Wins"
  elif [[ $player1 == "scissors" && $player2 == "paper" ]]; then
    echo "Player 1 Wins"
  elif [[ $player1 == "paper" && $player2 == "scissors" ]]; then
    echo "Player 2 Wins"
  elif [[ $player1 == "paper" && $player2 == "rock" ]]; then
    echo "Player 1 Wins"
  elif [[ $player1 = "rock" && $player2 == "paper" ]]; then
    echo "Player 2 Wins"
  else
    echo "There was an error please try again"
  main
  fi
}

function playAgain {
  echo "Player 1: $player1 , Player 2: $player2"
  echo "Would you like to play again? (y/n): "
  read play
  if [[ $play == "y" ]]; then
    main
  fi
}

function main {
  player1
  player2
  compare
  playAgain
}
main









