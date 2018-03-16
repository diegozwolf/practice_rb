Solving a problem two ways
Fibonacci numbers are a pattern that starts this way
0 1 1 2 3 5 8

Write a function that returns an array of fibonacci numbers ex:
fib(3)
=> [0,1,1]

Your coworker started on two different functions, but then got swtiched to a different assignment. Finish/correct her work and get both versions working.

First she tried it with a loop.

def fib(number)
  fib_numbers = [0,1]
  while do #maybe until?
  #?
  end
end

Then she tried recursion

def fancy_fib(num, arr = [0,1])
  fancy_fib(num, arr) if #....?
end
