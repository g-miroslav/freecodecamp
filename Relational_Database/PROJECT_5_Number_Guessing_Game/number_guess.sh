#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
CREATE_GAME() {
  CURRENT_USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
  INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, guess_count) VALUES($CURRENT_USER_ID, 0)")
  if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
  then
    CURRENT_GAME_ID=$($PSQL "SELECT MAX(game_id) FROM games")
    echo "Guess the secret number between 1 and 1000:"
    GUESS_COUNTER=0
    GUESSING_GAME
  fi
}
GUESSING_GAME() {
  read GUESS
  GUESS_COUNTER=$((GUESS_COUNTER+1))
  # check if guess is an integer
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    # guess is not an integer start game again
    echo "That is not an integer, guess again:"
    GUESSING_GAME
  else
    # check if guess is greated then number generated
    if [[ $GUESS -eq $GENERATED_NUMBER ]]
    then
      # the player guessed correctly
      # get the guess count
      UPDATE_COUNTER_RESULT=$($PSQL "UPDATE games SET guess_count = $GUESS_COUNTER WHERE game_id = $CURRENT_GAME_ID")
      # display the ending message
      echo "You guessed it in $GUESS_COUNTER tries. The secret number was $GENERATED_NUMBER. Nice job!"
    else
      if [[ $GUESS -gt $GENERATED_NUMBER ]]
      then
        # the player needs to guess lower => start game again
        echo "It's lower than that, guess again:"
        GUESSING_GAME
      else
        # the player needs to guess lower => start game again
        echo "It's higher than that, guess again:"
        GUESSING_GAME
      fi
    fi
  fi 
}
GENERATED_NUMBER=$[ $RANDOM % 1000 ]
echo $GENERATED_NUMBER
echo "Enter your username:"
read USERNAME
# determine if username in database
EXISTING_USERS=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
# if username not in database
if [[ -z $EXISTING_USERS ]]
then
  # add username to database
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  if [[ $INSERT_USER_RESULT == "INSERT 0 1" ]]
  then
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    CREATE_GAME
  fi
else
  # username in database
  EXISTING_USER_INFO=$($PSQL "SELECT username, COUNT(game_id), MIN(guess_count) FROM users INNER JOIN games ON users.user_id = games.user_id WHERE username = '$USERNAME' GROUP BY username")
  echo "$EXISTING_USER_INFO" | while IFS="|" read USERNAME GAME_COUNT MIN_GUESS_COUNT
  do
    # display welcome message
    echo "Welcome back, $USERNAME! You have played $GAME_COUNT games, and your best game took $MIN_GUESS_COUNT guesses."
  done
  CREATE_GAME
fi