
tablas = [
            [[0,0],[1,0],[2,0],[3,0][4,0]],
            [[0,1],[1,1],[2,1],[3,1][4,1]],
            [[0,2],[1,2],[2,2],[3,2][4,2]],
            [[0,3],[1,3],[2,3],[3,3][4,3]]
         ]

require_relative 'cell'
class World
  def initialize(width, height)
    cells = []
    puts height.times do |x|
      @cells.push([])
      width.times do |y|
        @cells[x].push(Cell.new(self, x, y))
      end
    end
  end

  def cells
    @cells.flatten
  end

  def cell_at(x, y)
    if @cells[x]
      @cells[x][y]
    end
  end

  def next_generation!
    affected = []
    cells.each do |cell|
      if(cell.live? && cell.live_neighbours.length < 2)
        affected.push cell
      end
    end
    affected.each(&:toggle!)
    return
  end
end