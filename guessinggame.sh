#!/usr/bin/env bash
# File: guessinggame.sh

# Function to count the number of files in the current directory
count_files() {
  local num_files=$(ls -1 | wc -l)
  echo $num_files
}

# Get the correct number of files in the directory
correct_count=$(count_files)

# Initialize the user's guess
user_guess=-1

# Main loop for user interaction
while [[ $user_guess -ne $correct_count ]]; do
  read -p "How many files are in the current directory? Enter your guess: " user_guess

  if [[ $user_guess -lt $correct_count ]]; then
    echo "Your guess is too low. Try again."
  elif [[ $user_guess -gt $correct_count ]]; then
    echo "Your guess is too high. Try again."
  else
    echo "Congratulations! You guessed correctly. There are $correct_count files in the directory."
  fi
done
