require 'test/unit'
require_relative 'string_calculator'

class TestStringCalculator < Test::Unit::TestCase
  def test_empty_string_returns_zero
    calc = StringCalculator.new
    assert_equal 0, calc.add("")
  end
end
