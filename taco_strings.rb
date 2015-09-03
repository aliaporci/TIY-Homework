# PART 1: Words from strings
# Create an array of the words in the sentence below
# Find how many words have a length equal to 5
# "Tacos must not have lettuce Only meat and cheese and salsa"

taco_opinion_words_string = "Tacos must not have lettuce Only meat and cheese and salsa"

taco_opinion_words_array = taco_opinion_words_string.split(" ")

puts taco_opinion_words_array.select { |word| word.length == 5}.count
