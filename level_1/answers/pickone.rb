
animals = ["fox", "camel", "spider", 'Kangoroo','tiger','capibara']
choice = rand(0...animals.length)

puts "your animal is: #{animals[choice]} do you like it? (y/n)" #animals.sample
like = gets.chomp




while like == "n" && animals.length > 0
    print animals
    puts choice
    puts "your animal is: #{animals[choice]} do you like it? (y/n)"
    like = gets.chomp
    animals.delete_at(choice)
    choice = rand(0...animals.length)
    puts "we dont have more animals for you, come back tomorrow" if animals.length == 0
    break if animals.length == 0
end

    


puts "the #{animals[choice]} a new pet" if like == "y"






# while animals.lenght > 0
#  animals.each_with_index do |animal, index|
#      puts "#{animal}: #{index}"
#  end