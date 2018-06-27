require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test
  def test_it_exists
    credit_check = CreditCheck.new

    assert_instance_of CreditCheck, credit_check
  end

  def test_it_can_separate_and_reverse_characters
    credit_check = CreditCheck.new
    credit_card = 4929735477250543

    expected = [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4]

    assert_equal expected, credit_check.separate_and_reverse_characters(credit_card)
  end

  def test_it_can_double_every_other_number
    credit_check = CreditCheck.new
    credit_card = [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4]

    expected = [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8]
    assert_equal expected, credit_check.double_every_other_number(credit_card)
  end

  def test_it_can_sum_digits_over_nine
    credit_check = CreditCheck.new
    credit_card = [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8]

    expected = [3, 8, 5, 0, 5, 4, 7, 5, 4, 1, 3, 5, 9, 4, 9, 8]
    assert_equal expected, credit_check.sum_greater_than_nine(credit_card)
  end

  def test_it_can_sum_numbers
    credit_check = CreditCheck.new
    credit_card = [3, 8, 5, 0, 5, 4, 7, 5, 4, 1, 3, 5, 9, 4, 9, 8]

    assert_equal 80, credit_check.sum_numbers(credit_card)
  end

  def test_modulo_is_equal_to_zero_and_returns_true
    credit_check = CreditCheck.new

    assert_equal true, credit_check.valid_number?(4929735477250543)
  end

  def test_modulo_is_equal_to_zero_and_returns_true_with_integer
    credit_check = CreditCheck.new

    assert_equal true, credit_check.valid_number?(4929735477250543)
  end

  def test_modulo_is_not_equal_to_zero_and_returns_false
    credit_check = CreditCheck.new

    assert_equal false, credit_check.valid_number?(5541801923795240)
  end

  def test_modulo_is_not_equal_to_zero_and_returns_false_with_integer
    credit_check = CreditCheck.new

    refute credit_check.valid_number?(5541801923795240)
  end

  def test_it_will_generate_valid_message
    credit_check = CreditCheck.new

    expected = "The number 4929735477250543 is valid."

    assert_equal expected, credit_check.validation_output(4929735477250543)
  end

  def test_it_will_generate_invalid_message
    credit_check = CreditCheck.new

    expected = "The number 5541801923795240 is invalid."

    assert_equal expected, credit_check.validation_output(5541801923795240)
  end

  def test_it_validates_amex
    credit_check = CreditCheck.new

    expected = "The number 342804633855673 is valid."

    assert_equal expected, credit_check.validation_output(342804633855673)
  end

  def test_it_validates_invalid_amex
    credit_check = CreditCheck.new

    expected = "The number 342801633855673 is invalid."

    assert_equal expected, credit_check.validation_output(342801633855673)
  end
end
