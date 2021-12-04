# frozen_string_literal: true

module Submarine
  class Movement
    def initialize(data)
      @x_position = 0
      @y_position = 0
      @position = 0
      @aim = 0
      process_movement(data)
    end

    def position
      @x_position * @y_position
    end

    def process_movement(data)
      data.each do |move|
        move = move.split
        case move[0]
        when 'forward'
          @x_position += move[1].to_i
          handle_aim(move[1].to_i)
        when 'backward'
          @x_position -= move[1].to_i
          handle_aim(-move[1].to_i)
        when 'up'
          @aim -= move[1].to_i
        when 'down'
          @aim += move[1].to_i
        end
      end
    end

    def handle_aim(x_move)
      @y_position += @aim * x_move
    end
  end
end
