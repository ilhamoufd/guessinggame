#!/bin/bash

guessing_game() {
  local correct_answer=$(ls -l | grep -v ^d | wc -l)

  local guess=0
  while [ $guess -ne $correct_answer ]; do
    echo "c'est quoi le nombre de fichiers dans le répertoire actuel : "
    read guess

    if [ $guess -lt $correct_answer ]; then
      echo "Ton estimation est trop basse ! Essaie encore."
    elif [ $guess -gt $correct_answer ]; then
      echo "Ton estimation est trop haute ! Essaie encore."
    fi
  done

  echo "Félicitations ! Tu as deviné le bon nombre de fichiers."
}

guessing_game
