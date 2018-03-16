require 'pry'

def fizzbuzz(num)
    num.times do |number|
        if number % 5 == 0 && number % 3 == 0
        elsif number% 3 == 0
        puts number
        elsif number %5 ==0
        puts number
        end
    end
    return nil
end


binding.pry




puts fizzbuzz(15)
puts fizzbuzz(10)
puts fizzbuzz(9)
puts fizzbuzz(6)
puts fizzbuzz(5)
puts fizzbuzz(3)
puts fizzbuzz(7)

    #if num % 3 == 0 && num % 5 == 0
    #     "fizzbuzz"
    # elsif num % 3 == 0
    #    "fizz" 
    #elsif num % 5 == 0
    #     "buzz"
    #else
    #    num
    #end