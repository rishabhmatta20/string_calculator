class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    numbers, delimiters = numbers_and_its_delimiters(numbers)
    numbers.split(delimiters).map(&:to_i).sum
  end

  private

  def self.numbers_and_its_delimiters(numbers)
    if numbers.start_with?("//")
      delimiter, numbers = numbers.split("\n", 2)
      [numbers, delimiter[2..-1]]
    else
      [numbers, /,|\n/]
    end
  end
end