class  Dog
   def initialize(name,breed)
       @name = name
       @breed = breed
       @count_pets = 0
   end
   
   def pet
       @count_pets += 1
   end
   def sh
       ow_dog
       puts "#{@name} is a: #{@breed} "
   end
end


pepito = Dog.new('pepito', 'shitzu')
neron = Dog.new('neron', 'mutant')

pepito.show_dog
neron.show_dog

