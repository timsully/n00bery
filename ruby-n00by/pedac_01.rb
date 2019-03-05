=begin
Suppose you have an arbitrary natural number (the target) and a set of one or 
more additional natural numbers (the factors). Write a program that computes the 
sum of all numbers from 1 up to the target number that are also multiples of one 
of the factors. 

For instance, if the target is 20, and the factors are 3 and 5, that gives us the
list of multiples 3, 5, 6, 9, 10, 12, 15, 18. The sum of these multiples is 78.

If no factors are given, use 3 and 5 as the default factors.

- We can see we have two inputs(aka arguments)

inputs:
  target number
  the set of factors

  target number:
  20

  multiples of 3:
  3, 6, 9, 12, 15, 18 (all have no remainder when divided by 3)

  multiples of 5:
  5, 10, 15 (all have no remainder when divided by 5)


output:
  sum of multiples


Mental Model:

Determine a list of all multiples of a set of factors up to a target value,
then filter the list of multiples to the unique values. Finally, compute and
return the sum of the unique multiples.

Another Mental Model:

Incrementally build a list of numbers that are multiples of a set of on or more
factors. Add a multiple to the list only if it is not yet on the list. Finally,
compute and return the sum of the numbers on the list.


Examples / Test Cases

Validation
* Note that we derive our examples from our rules(created them ourselves)

------------------------
Example 1

Inputs
  - Target number: 20
  - Factors: [3,5]

Output
  - 78
------------------------

------------------------
Example 2

Inputs
  - Target number: 20
  - Factors: [3]

Output
  - 63
------------------------

------------------------
Example 3

Inputs
  - Target number: 20
  - Factors: [5]

Output
  - 30
------------------------

------------------------
Example 4

Inputs
  - Target number: 20
  - Factors: []

Output
  - 78
------------------------

------------------------
Example 5

Inputs
  - Target number: 1
  - Factors: []

Output
  - 0
------------------------

------------------------
Example 6

Inputs
  - Target number: 20
  - Factors: [19]

Output
  - 19
------------------------
=end
def sum_of_multiples(target, factors)
  multiples = []
  factors = [3, 5] if factors.length == 0

  factors.each do |factor|
    current_multiple = factor

    while current_multiple < target
      multiples << current_multiple
      current_multiple += factor
    end
  end

  # removes duplicate values and sums up all elements in array
  multiples.uniq.inject(0, :+)
end

puts sum_of_multiples(20, [3, 5]) # returns 78
puts sum_of_multiples(20, [3])    # returns 63
puts sum_of_multiples(20, [5])    # returns 30
puts sum_of_multiples(20, [])     # returns 78
puts sum_of_multiples(1, [])      # returns 0
puts sum_of_multiples(20, [19])   # returns 19