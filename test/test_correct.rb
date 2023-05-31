require 'test/unit'
require_relative '../lib/sabetsuka'

class MyMethodTest < Test::Unit::TestCase

  def test_zero
    assert_equal("0", Sabetsuka::Polynomial.new("0", "x").differentiate.to_s, )
  end

  def test_constant
    assert_equal("0", Sabetsuka::Polynomial.new("3", "x").differentiate.to_s)
  end

  def test_neggativenumber
    assert_equal("-15", Sabetsuka::Polynomial.new("-15x", "x").differentiate.to_s)
  end


  def test_p1
    assert_equal("9x^2 + 8x + 5", Sabetsuka::Polynomial.new("3x^3 + 4x^2 + 5x + 4", "x").differentiate.to_s)
  end

  def test_p2
    assert_equal("-6x^2 + 10x - 3", Sabetsuka::Polynomial.new("-2x^3 + 5x^2 - 3x + 1", "x").differentiate.to_s)
  end


  def test_p3
    assert_equal("20x^4 + 8x^3 - 14x + 3", Sabetsuka::Polynomial.new("4x^5 + 2x^4 - 7x^2 + 3x - 9" , "x").differentiate.to_s)
  end

  def test_p4
    assert_equal("-3", Sabetsuka::Polynomial.new("5x^3 + 4x^2 - 3y" , "y").differentiate.to_s)
  end

  def test_p5
    assert_equal("-6y^2 - 13", Sabetsuka::Polynomial.new("-2y^3 + 4x^2 - 13y + 7" , "y").differentiate.to_s)
  end


end