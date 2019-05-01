=begin
Given a sentence made up of several words, write a method to
do the following:

Iterate through the words one by one.
  - save the first word as the starting value.
  - starting with the next word iterate through all the remaining words in the sentence
  - for each iteration, compare the saved value with the current word.
  - if the word is longer or the same length as the saved value.:
    - re-assign the saved value as the current word
  - move onto the next word

After iterating through the sentence, return the saved value.
=end
def longest_word(sentence)
  # divide string into array of substrings
  words = sentence.split
  # removes element and returns it, which will assign value to saved_word
  saved_word = words.shift

  # iterate through array
  words.each do |word|
    # if word is greater than or equal to saved word assign value
    # to saved_word
    if word.length >= saved_word.length
      saved_word = word
    end
  end
  # one iteration is complete, return the longest word in sentence
  saved_word
end

longest_word("long wordsky breh")