class StringCalculator
  def add(numbers)
    0 if numbers.empty?   # check if the string is empty.
    delimiter, numbers = parse_demiliter(numbers) # given string "//;\n1;2" identify delimiter, numbers
    numbers.split(delimiter).map(&:to_i).sum
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
end
