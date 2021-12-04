# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Year2021::Day01 do
  let(:input) { File.read(File.join(File.dirname(__FILE__), '../../../challenges/2021/01/input.txt')) }
  let(:example_input) do
    <<~EOF
      199
      200
      208
      210
      200
      207
      240
      269
      260
      263
    EOF
  end

  describe 'part 1' do
    it 'returns nil for the example input' do
      expect(described_class.part_1(example_input)).to eq(7)
    end

    it 'returns nil for my input' do
      expect(described_class.part_1(input)).to eq(1681)
    end
  end

  describe 'part 2' do
    it 'returns nil for the example input' do
      expect(described_class.part_2(example_input)).to eq(5)
    end

    it 'returns nil for my input' do
      expect(described_class.part_2(input)).to eq(1704)
    end
  end
end
