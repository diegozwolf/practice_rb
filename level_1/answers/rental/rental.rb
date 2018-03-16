require_relative 'person'

bacata = Building.new('Bacata','8a',25,76,70,400)
@build_name = bacata.show_name
@user_option = nil

def menu
    puts "(1) #{@build_name} options: "
    puts "(2) View #{@build_name} details"
    puts "(3) Add a tenant"
    puts "(4) List the apartment directory for the building"
    puts "(5) Quit"
    puts  "Pick one:"
    @user_option = gets.chomp.to_i
end

menu

puts "1" if @user_option == 1
puts "2" if @user_option == 2
puts "3" if @user_option == 3
puts "4" if @user_option == 4
puts "5" if @user_option == 5
