require 'rspec'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'is defined' do
      expect(StringCalculator).to respond_to(:add)
    end
  end
end