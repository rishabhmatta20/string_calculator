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

    it 'returns the sum of multiple numbers' do
      expect(StringCalculator.add("1,2,3")).to eq(6)
    end

    it 'handles new line as delimiter' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it 'handles custom delimiter' do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end

    it 'raises an exception for negative numbers' do
      expect { StringCalculator.add("1,-2,3") }.to raise_error("negative numbers not allowed: -2")
    end

    it 'raises an exception for multiple negative numbers' do
      expect { StringCalculator.add("1,-2,-3") }.to raise_error("negative numbers not allowed: -2, -3")
    end
  end
end