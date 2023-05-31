require 'test/unit'
require_relative '../lib/sabetsuka'

class MyMethodTest < Test::Unit::TestCase

  def test_empty
    assert_equal("", Sabetsuka::Polynomial.new("").differentiate.to_s)
  end
  
  def test_two_signs
    assert_equal("", Sabetsuka::Polynomial.new("2x^3 ++ 9x").differentiate.to_s)
  end

  def test_sign_without_term
    assert_equal("", Sabetsuka::Polynomial.new("2x^3 + + 5").differentiate.to_s)
  end
  
  def test_sign_without_first_term
    assert_equal("", Sabetsuka::Polynomial.new("+ 2x^3").differentiate.to_s)
  end
  
  def test_sign_without_second_term
    assert_equal("", Sabetsuka::Polynomial.new("2x^3 + 9x^2 +").differentiate.to_s)
  end
  
  def test_letter_deg
    assert_equal("", Sabetsuka::Polynomial.new("2x^a + 5").differentiate.to_s)
  end

  def test_deg_without_var
    assert_equal("", Sabetsuka::Polynomial.new("^4 + 56").differentiate.to_s)
  end
  
  def test_deg_without_num
    assert_equal("", Sabetsuka::Polynomial.new("x^ + 56").differentiate.to_s)
  end
  
end