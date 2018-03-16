require_relative 'apartment'

class  Person < Apartment
   def initialize(name,age,gender)
       @name = name
       @age = age
       @gender = gender
   end
end