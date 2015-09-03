# Create an array of movies with budgets less than 100
# Create an array of movies that have Leonardo DiCaprio as a star

movies = []

movies << {
  title: "Forrest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}

cheaper_movies = movies.select { |movie| movie[:budget] < 100 }

# alternately:
# cheaper_movies = movies.select { |movie| movie.fetch(:budget) < 100 }


leo_movies = movies.select { |movie| movie[:stars].include? "Leonardo DiCaprio" }

# alternately:
# leo_movies = movies.select { |movie| movie.fetch(:stars).include? "Leonardo DiCaprio" }

# print cheaper_movies
# print leo_movies

puts "\n\nThese movies had a budget of less than $100M:\n "

cheaper_movies.each { |movie| puts movie.fetch(:title) + "\n " }

puts "------------------"
puts "\nThese movies starred Leonardo DiCaprio:\n "

leo_movies.each { |movie| puts movie.fetch(:title) + "\n " }

# cheap_leo_movies = movies.select { |movie| movie[:budget] < 100 && movie[:stars]}
