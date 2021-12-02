module Submarine
  class Movement
    def initialize(data)
      @x_position = 0
      @y_position = 0
      @position = 0
      process_movement(data)
    end

    def position
      @x_position * @y_position
    end

    def process_movement(data)
      move_hash = movement_hash(data)
      process_x(move_hash[:x])
      process_y(move_hash[:y])
    end

    def movement_hash(dataset)
      x_movement, y_movement = dataset.partition do |move_string|
        move_string.include? "forward" || "backwards"
      end
      { x: x_movement, y: y_movement }
    end

    def process_x(move_list)
      move_list.each do |move|
        move = move.split
        if move.include? "forward"
          move
          @x_position += move[1].to_i
        else
          @x_position -= move[1].to_i
        end
      end
    end

    # down is positive cuz depth...
    def process_y(move_list)
      move_list.each do |move|
        move = move.split
        if move.include? "up"
          move
          @y_position -= move[1].to_i
        else
          @y_position += move[1].to_i
        end
      end
    end
  end
end