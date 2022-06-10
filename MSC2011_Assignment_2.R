# MSC2011 Assignment 2
# Danni Ma

# Prompt the user to enter a three digit positive number.
response <- readline(prompt = "Enter a three digit positive number: ") 

# Convert input into numeric.
response <- as.numeric(response)

# Check if the user input is numeric. If not, print an error message and quit.
if (is.na(response)) {
  print("Entry is not numeric. Exiting program.")
  
  # Check if the number is narcissistic. 
} else {
  
  #' Find all 3 digits of the input number, store them separately as first_dig, 
  #' second_dig, and third_dig. 
  first_dig <- response %/% 100
  second_dig <- (response %/% 10) %% 10
  third_dig <- response %% 10
  
  # Evaluate whether the input number equals the sum of the cubes of its own digits.
  if (sum(c(first_dig, second_dig, third_dig) ^ 3) == response) {
    
    # Display the result with an appropriate message.
    print(paste(response, "is a narcissistic number."))
  } else {
    print(paste(response, "is not a narcissistic number."))
  }
}





