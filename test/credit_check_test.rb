require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test
  def test_it_exists
    credit_check = CreditCheck.new("4929735477250543")

    assert_instance_of CreditCheck, credit_check
  end

  def test_it_can_separate_characters
    credit_check = CreditCheck.new("4929735477250543")

    expected = [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4]

    assert_equal expected, credit_check.separate_characters
  end
end
