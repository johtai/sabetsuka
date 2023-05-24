require 'test/unit'
require_relative '../lib/sabetsuka'

class MyMethodTest < Test::Unit::TestCase

  def test_zeroes
    assert_equal("9x^2 + 8x + 5", Sabetsuka::Polynomial.new("3x^3 + 4x^2 + 5x + 4").differentiate.to_s)
  end

end