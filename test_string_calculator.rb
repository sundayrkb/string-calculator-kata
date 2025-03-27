require 'test/unit'
require_relative 'string_calculator'

class TestStringCalculator < Test::Unit::TestCase
  def test_empty_string_returns_zero
    calc = StringCalculator.new
    assert_equal 0, calc.add("")
  end

  def test_single_number_returns_itself
    calc = StringCalculator.new
    assert_equal 1, calc.add("1") # test fails because add defination returns 0
  end
end
