class Arena
   def initialize(name)
       @name = name
       @fighters = [['chucho', 'Majeno'], ['chucho', 'quarawatanna']]
   end
   
   def a_name
       @name=name.capitalize
   end
   def a_fighters
       @fighters
   end
   
   def add_fighter(fighter)
       if @fighters.length < 0
           @fighters << fighter
        elsif @fighters.length == 2
           figh(@fighters)
       else
           "the arena is full"
       end
   end
   
   def fight(fighters)
       if fighters[0][1].eql?('Majeno') && fighters[0][1].eql?('quarawatanna')
   end
end