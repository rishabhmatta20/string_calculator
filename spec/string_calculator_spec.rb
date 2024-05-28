require 'rspec'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'is defined' do
      expect(StringCalculator).to respond_to(:add)
    end

    it 'returns 0 for an empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns the number itself for a single number' do
      expect(StringCalculator.add("1")).to eq(1)
    end
  end
end