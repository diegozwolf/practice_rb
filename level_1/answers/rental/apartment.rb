require_relative 'building'

class  Apartment < Building
   def initialize(name,price,sqft,num_beds,num_baths,renter)
       @name = name
       @price = price
       @sqft = sqft
       @num_beds = baths
       @renter = renter
   end
   def show_apartment_name
       @name
   end
end
