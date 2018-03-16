require_relative 'client'
class Animal < Client
    
    def initialize(name, species)
        @name = name
        @species = species
        @toys = []
    end
    
    def animal_info(data = 'name')
        return @name  if data.eql?('name')
        return @species if data.eql?('species')
        return @toys if data.eql?('toys')
    end
    
    def add_toy(toy)
      @toys << toy  
    end
    
end
