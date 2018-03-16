# def fib
#   fib_numbers = [0,1]
#   while fib_numbers.length < 15
#     fib_numbers << fib_numbers[-1] + fib_numbers[-2] 
#   end
#   fib_numbers.delete_at(0)
#   fib_numbers.delete_at(1)
#   puts fib_numbers
# end


# fib

def fancy_fib(num, arr = [0,1])
    if arr.length != num
        arr= fancy_fib(num, arr.push(arr[-1]+ arr[-2]))
    end
    arr
end

puts fancy_fib(3, arr = [0,1] )