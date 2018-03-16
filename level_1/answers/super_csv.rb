require 'csv'

movie_names = []
xmen_movies = []
studios = []
one_name_movies = []
wb_movies = []
before_2016 = []


arr_of_arrs = CSV.read("../12-super.csv")


arr_of_arrs.each do |movie|
   movie_names << movie[1]
   xmen_movies << movie[1] if  movie[1].include?('X-Men')
   studios <<  movie[2] 
   one_name_movies << movie[1] if movie[1].rindex(' ') == 0
   wb_movies << movie[2] if  movie[2].include?('WB')
   #puts movie[-1].to_s[-2..-1] https://www.foragoodstrftime.com/
end

# print movie_names
# print xmen_movies
#print studios.uniq
#print one_name_movies
puts "WB have #{wb_movies.length} superhero movies"


