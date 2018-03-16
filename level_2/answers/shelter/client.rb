require_relative 'shelter'


class  Client < Shellter
        
    def initialize(name, age)
        @name = name
        @age = age
        @animals = []
    end
    
    def client_info(data)
        return @name  if data.eql?('name')
        return @age if data.eql?('age')
        show_animals if data.eql?('animals')
    end
    
    
    def add_animal(animal)
        @animals << animal
    end
    
    def show_animals
        @animals.map do |animal|
            animal.animal_info('name')
        end
    end
    
end