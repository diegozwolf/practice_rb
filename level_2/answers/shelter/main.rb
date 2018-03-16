require_relative 'animal'


wolf = Animal.new('wolfy', 'canine')
jiraffe = Animal.new('margy', 'long neck')

puts wolf.animal_info('name')
puts wolf.add_toy('human bone')
puts wolf.animal_info('toys')

pepito = Client.new('pepito',14)


puts pepito.client_info('name')
pepito.add_animal(wolf)
pepito.add_animal(jiraffe)

print  pepito.client_info('animals')

