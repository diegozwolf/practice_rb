require 'pry'

class Board
  def initialize(size = 10)
    @current_state = fresh_board(size)
    @size = size
    display
  end

  def fresh_board(size)
    board_arr = []
    size.times { board_arr << Array.new(size).map { |cell| [true, false].sample  } }
    board_arr
  end
  
  def next_turn
    sleep 1
    @current_state = process_turn
    display
  end
  
  def process_turn
    @current_state.dup.each_with_index.map do |row, i|
      row.each_with_index.map do |cell, j|
        cell = process_cell(cell, i,j)
      end
    end
  end
  
  def process_cell(alive,x,y)
    neighbors = 0
    [cell_alive?(x + 1, y - 1),
    cell_alive?(x - 1, y - 1),
    cell_alive?(x - 0, y - 1),
    cell_alive?(x + 1, y - 0),
    cell_alive?(x - 1, y - 0),
    # cell_alive?(x - 0, y - 0),
    cell_alive?(x + 1, y + 1),
    cell_alive?(x - 1, y + 1),
    cell_alive?(x - 0, y + 1)].each {|cell_true| neighbors += 1 if cell_true}
    apply_rules(alive, neighbors)
  end
  
  def apply_rules(alive, neighbors)
    if alive && neighbors > 1 && neighbors < 4
      true
    elsif !alive && neighbors == 3
      true
    else
      false
    end
  end
  
  def cell_alive?(x, y)
    x >= 0 && y >= 0 && x < @size && y < @size &&  @current_state[x][y]
  end
  
  def display
    @current_state.each do |row|
      row.each do |show_cell|
        print ' ' + (show_cell ? 'X' : '_')
      end
      puts
    end
  end
  
end

class Game
  def initialize(size = nil)
    @board = Board.new
  end
  
  def run(turns = 40)
    turns.times do
      @board.next_turn
    end
  end
end

while true
  Game.new.run
end
