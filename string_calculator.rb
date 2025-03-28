class StringCalculator
  def add(numbers)
    0 if numbers.empty?   # check if the string is empty.
    delimiter, numbers = parse_demiliter(numbers) # given string "//;\n1;2" identify delimiter, numbers
    nums = numbers.split(delimiter).map(&:to_i)
    check_negatives(nums)
    nums.sum
  end

  private

  def parse_demiliter(numbers)
    if numbers.start_with?("//") # enter if custom delimiter "//" start_with
      delimiter = numbers[2]     # at index 2 identifies delimiter ";"
      numbers = numbers.split("\n", 2) [1] # separate delimiter newline for [1;2]
      return [delimiter, numbers]
    end
    [/,|\n/, numbers]
  end
  def check_negatives(nums)
    negatives = nums.select { |n| n < 0 } # get all negatives at on place
    raise "Negatives not allowed: #{negatives.join(', ')}" unless negatives.empty?
  end
end
