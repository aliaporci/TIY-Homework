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

puts "\n\nThese movies had a budget of less than $100M:\n "

#print cheaper_movies
cheaper_movies.each { |movie| puts movie.fetch(:title) + "\n " }

puts "------------------"
puts "\nThese movies starred Leonardo DiCaprio:\n "

#print leo_movies
leo_movies.each { |movie| puts movie.fetch(:title) + "\n " }

#movies.each { |movie| print movie.fetch(:stars) }#+ "\n" }

# def say_hi(person)
#   puts "hiiiiiii....#{person}"
# end
#
# puts "\n\n-----------"
# puts "A simple method: for say_hi"
# say_hi("Rufus")
#
# class Person
#   def initialize(person_name, person_age)
#     @name = person_name
#     @age = person_age
#   end
#
#
#   def greet
#     puts "#{@name}, who is #{@age} says......'ey fuckface'"
#   end
# end
#
# puts "\n\n-----------"
# puts "getting classy: for Person class"
# some_guy = Person.new("Travo",31)
# some_guy.greet
