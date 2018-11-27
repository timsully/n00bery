# creating a hash key with ruby 1.9 syntax for creating hash keys

movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

# each_key method calls the block once for each key string in 
# the database (in other words the movie_ratings hash keys) Returns self
movie_ratings.each_key { |k| puts k }