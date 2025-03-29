class StringCalculator
  def add(numbers)
    0 if numbers.empty?
    delimiter, numbers = parse_demiliter(numbers)
    number_array = numbers.split(delimiter).map(&:to_i)
    check_negatives(number_array)
    number_array.sum
  end

  private

  def parse_demiliter(numbers)
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers.split("\n", 2) [1] 
      return [delimiter, numbers]
    end
    [/,|\n/, numbers]
  end
  def check_negatives(number_array)
    negatives = number_array.select { |n| n < 0 } # get all negatives at on place
    raise "Negatives not allowed: #{negatives.join(', ')}" unless negatives.empty?
  end
end
