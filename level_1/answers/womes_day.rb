womens = ['cleopatra', 'aretha', 'joan','andrea']

print womens
puts womens.length
puts womens[-1].length

hash = {}

womens.each do |name|
    hash[name] = name.length
end

puts hash