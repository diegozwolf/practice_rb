fav_sports = ['NBA', 'NLF', 'FIFA']

puts fav_sports

fav_sports.map! do |sport|
    sport = 'NFL' if sport == 'NLF'
    sport
end

puts fav_sports

#************************************************
names = ['nicole', 'andres', 'diego']

capitalize_names = names.map do |name|
     name.capitalize
end
puts names
puts capitalize_names