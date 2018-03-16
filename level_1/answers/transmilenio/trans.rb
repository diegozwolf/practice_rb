puts 'Welcome to the Bogota Transmilenio!'
transmilenio_hash = {blue: {calle_63: 1, calle_45: 2 }}
red = ['calle 62', 'calle 42', 'carrera 19b', 'calle 18', 'calle 17', 'calle 16', 'calle 15', 'avenida boyaca']
blue = ['calle 63', 'calle 45', 'calle 26', 'centro historico', 'hospitales', 'santander', 'avenida boyoca', 'kennedy']

def show_line(line)
    line.each do |stop|
        puts stop
    end
end

def line_include(color, first_stop)
    color.include?(first_stop)
end

puts 'are you traveling on the blue line?(yes/no)'
user_line = gets.chomp

show_line(blue) if user_line.eql?('yes')
show_line(red) if user_line.eql?('no')

puts 'Enter where you are departing from'
user_first_stop = gets.chomp

if line_include(blue, user_first_stop )
    puts 'Enter your arriving destination'
    a_destination= gets.chomp
    stops_num = blue.index(user_first_stop) - blue.index(a_destination) if blue.index(user_first_stop) > blue.index(a_destination)
    stops_num = blue.index(a_destination) - blue.index(user_first_stop) if blue.index(a_destination) > blue.index(user_first_stop)
    puts "that is #{stops_num} stops!"
elsif line_include(red, user_first_stop )
    puts 'Enter your arriving destination'
    a_destination= gets.chomp
    stops_num = red.index(user_first_stop) - red.index(a_destination) if red.index(user_first_stop) > red.index(a_destination)
    stops_num = red.index(a_destination) - red.index(user_first_stop) if red.index(a_destination) > red.index(user_first_stop)
    puts "that is #{stops_num} stops!"
end