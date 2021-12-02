# frozen_string_literal: true
module Year2021
  class Day01 < Solution
    # @input is available if you need the raw data input
    # Call `data` to access either an array of the parsed data, or a single record for a 1-line input file

    def part_1
      processed_input = process_input(@input.split("\n"))
      process_dataset(processed_input)
    end

    def part_2
      nil
    end

    private
      # Processes each line of the input file and stores the result in the dataset
      def process_input(line)
        line.map(&:to_i)
      end

      # Processes the dataset as a whole
      def process_dataset(set)
        temp = []
        set.each_with_index do |value, index|
          if value > set[index - 1]
            temp.push(value)
          end
        end
        temp.length
      end
  end
end
