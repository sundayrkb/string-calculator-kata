class StringCalculator
  def add(numbers)
    0 if numbers.empty?   # check if the string is empty.
    numbers.split(/,|\n/).map(&:to_i).sum # Uses a regex to split on either a comma (,) or newline (\n)
  end
end
