class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    numbers = split_delimiters(numbers)

    negatives = numbers.select { |num| num < 0 }
    raise "negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?

    numbers.sum
  end

  private

  def self.split_delimiters(numbers)
    if numbers.start_with?("//")
      delimiter, numbers = numbers.split("\n", 2)
      numbers.split(delimiter[2..-1]).map(&:to_i)
    else
      numbers.split(/,|\n/).map(&:to_i)
    end
  end
end