require 'pry'

secret_num =  Random.new.rand(1..10)

puts "Escribe un numero de 1 al 10"
user_num = gets.chomp.to_i
count = 1
while secret_num != user_num
  puts "Escribe un numero de 1 al 10"
  user_num = gets.chomp.to_i
  count += 1
  if secret_num > user_num
    puts "subele"
  elsif secret_num < user_num
    puts "bajele"
  else
      puts "adivinaste y lo hiciste en #{count} intentos" if secret_num == user_num
  end
end
#inding.pry


arr = [8,5,7,'flood']
 arr.each_with_index do |element, index|
     puts "#{element}: #{index}"
 end