
def operations
    ['+', '-', '*', '/','quit']
end
user_operation = nil
@v1 = 0
@v2 = 0
def show_menu
    operations.each do |element|
        puts element
    end
end

def select_values
    puts 'select value 1'
    @v1 = gets.chomp.to_i
    puts 'select value 2'
    @v2 = gets.chomp.to_i
end

while user_operation != 'quit'
    puts 'choose one opertation:'
    show_menu
    user_operation = gets.chomp
    
    select_values
    
    puts "#{@v1 + @v2}" if user_operation == "+"
    puts "#{@v1 - @v2}" if user_operation == "-"
    puts "#{@v1 * @v2}" if user_operation == "*"
    puts "#{@v1 / @v2}" if user_operation == "/"
    puts  "bla bla bla" if user_operation !=
end




