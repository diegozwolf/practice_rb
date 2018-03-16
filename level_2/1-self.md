## All about self

Take a look at this class:

```ruby
class Person

def initialize(name)
  @name = name
end

def self.learn
  puts "I'm a class method"
  puts self
end

def learn
  puts "I'm an instance method"
  puts self
end

def hello
  self.learn
end

def hello_again
  learn
end

end
```

Create a new Person object and store it in the variable `raphael`. Print the following to the console / see what it returns in pry
* What happens when I call raphael.learn
* What happens when I call raphael.hello
* What happens when I call raphael.hello_again

Print the following to the console / see what it returns in pry
* What happens when I call Person.learn
* What happens when I call Person.hello
* What happens when I call Person.hello_again



## Arrays, sorting & blocks review

For the following array, how would I...

```
random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]
```
* Print out a plural version of each animal on a new line(ie porpoises, camels, etc)
* Return an array of the animals sorted alphabetically
* Return an array of the animals sorted reverse alphabetically
* Return an array of the animals with each individual string reversed
* Return an array of the animals sorted by word length (low to high)
* Return an array of the animals sorted alphabetically by the last character in the string
