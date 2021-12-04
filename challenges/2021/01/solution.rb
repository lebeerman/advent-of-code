# frozen_string_literal: true

module Year2021
  class Day01 < Solution
    # @input is available if you need the raw data input
    # Call `data` to access either an array of the parsed data, or a single record for a 1-line input file

    def part_1
      processed_input = process_input(@input.split)
      count_increasing_values(processed_input)
    end

    def part_2
      processed_input = process_input(@input.split)
      count_increasing_sets(processed_input)
    end

    private

    # Processes each line of the input file and stores the result in the dataset
    def process_input(line)
      line.map(&:to_i)
    end

    # Processes the dataset as a whole
    def count_increasing_values(set)
      count = 0
      set.each_with_index do |value, index|
        count += 1 if value > set[index - 1]
      end
      count
    end

    def count_increasing_sets(set)
      prev = nil
      count = 0
      set.each_cons(3).each_with_index do |group, _i|
        p group.sum
        count += 1 if prev && group.sum > prev.sum
        prev = group
      end
      count
    end
  end
end
