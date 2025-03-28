require 'test/unit'
require_relative 'string_calculator'

class TestStringCalculator < Test::Unit::TestCase
  def test_empty_string_returns_zero
    calc = StringCalculator.new
    assert_equal 0, calc.add("")
  end

  def test_single_number_returns_itself
    calc = StringCalculator.new
    assert_equal 1, calc.add("1")
  end

  def test_two_numbers_with_comma
    calc = StringCalculator.new
    assert_equal 6, calc.add("1,5")
  end

  def test_multiple_numbers
    calc = StringCalculator.new
    assert_equal 7, calc.add("1,2,4")
  end

  def test_newline_delimiter
    calc = StringCalculator.new
    assert_equal 6, calc.add("1\n2,3")
  end
  def test_custom_delimiter
    calc = StringCalculator.new
    assert_equal 3, calc.add("//;\n1;2")
  end
  def test_negative_numbers_not_allowed
    calc = StringCalculator.new
    assert_raise(RuntimeError) do
      calc.add("1,-2")
    end
  end
  def test_multiple_negative_numbers_not_allowed
    calc = StringCalculator.new
    assert_raise(RuntimeError, "Negatives not allowed: -2,-3") do
      calc.add("1,-2,-3")
    end
  end
end
