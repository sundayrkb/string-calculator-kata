class StringCalculator
  def add(numbers)
    0 if numbers.empty?   # check if the string is empty.
    numbers.split(",").map(&:to_i).sum # split(","): Splits "1,5" into ["1","2"] and map(&:to_i) converts string to integer [1,2]
  end
end
