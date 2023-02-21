#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
# check if an argument is supplied
if [[ -z $1 ]]
then
  # if no argument is supplied
  echo "Please provide an element as an argument."
else
  # check if input is a numeric 
  if [[ $1 =~ ^[0-9]+$ ]]
  then
    # NUMERIC INPUT
    # check if atomic_number is valid
    ATOMIC_NUMBER_RESULT=$($PSQL "select p.atomic_number, e.name, e.symbol, t.type, p.atomic_mass, p.melting_point_celsius, p.boiling_point_celsius FROM elements as e INNER JOIN properties as p ON e.atomic_number=p.atomic_number INNER JOIN types as t ON p.type_id=t.type_id WHERE e.atomic_number=$1")
    if [[ -z $ATOMIC_NUMBER_RESULT ]]
    then
      echo "I could not find that element in the database."
    else
      QUERY_RESULT=$ATOMIC_NUMBER_RESULT
    fi
  else
    # NOT NUMERIC INPUT
    # check if symbol is valid
    SYMBOL_RESULT=$($PSQL "select p.atomic_number, e.name, e.symbol, t.type, p.atomic_mass, p.melting_point_celsius, p.boiling_point_celsius FROM elements as e INNER JOIN properties as p ON e.atomic_number=p.atomic_number INNER JOIN types as t ON p.type_id=t.type_id WHERE e.symbol='$1'")
    if [[ -z $SYMBOL_RESULT ]]
    then
      # check if name is valid
      NAME_RESULT=$($PSQL "select p.atomic_number, e.name, e.symbol, t.type, p.atomic_mass, p.melting_point_celsius, p.boiling_point_celsius FROM elements as e INNER JOIN properties as p ON e.atomic_number=p.atomic_number INNER JOIN types as t ON p.type_id=t.type_id WHERE e.name='$1'")
      if [[ -z $NAME_RESULT ]]
      then
        # input doesn't exit as atomic_number, symbol or name
        echo "I could not find that element in the database."
      else
      # the input is a valid name
      QUERY_RESULT=$NAME_RESULT
      fi
    else
      # the input is a valid symbol
      QUERY_RESULT=$SYMBOL_RESULT
    fi
  fi
  # check if QUERY_RESULT is not empty
  if [[ ! -z $QUERY_RESULT ]]
  then
    # get information from query
    echo "$QUERY_RESULT" | while IFS="|" read ATOMIC_NUMBER NAME SYMBOL TYPE ATOMIC_MASS MELTING_POINT BOLILING_POINT
    do
      # display message
      echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOLILING_POINT celsius."
    done
  fi
fi