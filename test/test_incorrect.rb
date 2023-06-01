require 'test/unit'
require_relative '../lib/sabetsuka'

class MyMethodTest < Test::Unit::TestCase


  def test_empty
    assert_raises ArgumentError do
      Sabetsuka::Polynomial.new("", "x").differentiate.to_s
    end
  end

  #def test_two_signs
  #assert_equal(ArgumentError, Sabetsuka::Polynomial.new("2x^3 ++ 9x", "x").differentiate.to_s)
  # end

  #def test_sign_without_term
  #assert_equal(ArgumentError, Sabetsuka::Polynomial.new("2x^3 + + 5", "y").differentiate.to_s)
  #end

  #def test_sign_without_first_term
  #assert_equal(ArgumentError, Sabetsuka::Polynomial.new("+ 2x^3", "x").differentiate.to_s)
  #end

  #def test_sign_without_second_term
  #assert_equal(ArgumentError, Sabetsuka::Polynomial.new("2x^3 + 9x^2 +" , "x").differentiate.to_s)
  #end

  #def test_letter_deg
  #assert_equal(ArgumentError, Sabetsuka::Polynomial.new("2x^a + 5", "y").differentiate.to_s)
  #end

  #def test_deg_without_var
  #assert_equal(ArgumentError, Sabetsuka::Polynomial.new("^4 + 56", "x").differentiate.to_s)
  #end

  #def test_deg_without_num
  #assert_equal(ArgumentError, Sabetsuka::Polynomial.new("x^ + 56", "x").differentiate.to_s)
  #end


end

