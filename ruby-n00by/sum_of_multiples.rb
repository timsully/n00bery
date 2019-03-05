=begin
Write a program that, given a number, can find the sum of all the multiples
of particular numbers up to but not including that number.

If we list all the natural numbers up to but not including 20 that are multiples
of either 3 or 5, we get 3, 5, 6, 9, 10, 12, 15, and 18.

The sum of these multiples is 78. Write a program that can find the sum of the
multiples of a given set of numbers. If no set of numbers is given, default
to 3 or 5.


Breaking down the problem:

Inputs:
  - number to serve as the upper limit of multiples
  - a set of factors use [3, 5] as factors if a set of factors is not given

Implicit Rules:
  - all inputs must be natural numbers > 0

Outputs:
  - sum of multiples of a given set of factors

  rules:
    - multiples must be < limit.

Implicit Rules:
  - each multiple must be unique

  From the example, the target is 20; and the factors are [3, 5], and the
  multiples are 3, 5, 6, 9, 10, 12, 15, and 18

    - all multiples of 2 that are less than 20 are:
      3, 6, 9, 12, 15, 18

    - all multiples of 5 that are less than 20 are:
    5, 10, 15

    15 appears once despite being a multiple of both 3 and 5

Integer:
  - need to do arithmetic operations

Arrays:
  - need to collect multiples
    - iterate factors to collect multiples of each one
    - includes to skip multiples that are present in collection
    - push unique multiples in collection
    - reduce the collection of multiples to get its sum


=end