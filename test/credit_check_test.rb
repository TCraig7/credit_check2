require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test
  def test_it_exists
    credit_check = CreditCheck.new("4929735477250543")

    assert_instance_of CreditCheck, credit_check
  end

  def test_it_can_separate_and_reverse_characters
    credit_check = CreditCheck.new("4929735477250543")

    expected = [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4]

    assert_equal expected, credit_check.separate_and_reverse_characters
  end

  def test_it_can_double_every_other_number
    credit_check = CreditCheck.new("4929735477250543")

    credit_check.separate_and_reverse_characters

    expected = [3, 8, 5, 0, 5, 4, 7, 14, 4, 10, 3, 14, 9, 4, 9, 8]
    assert_equal expected, credit_check.double_every_other_number
  end

  # def test_it_can_sum_digits_over_nine
  #   credit_check = CreditCheck.new("4929735477250543")
  #
  #   expected = [3, 8, 5, 0, 5, 4, 7, 5, 4, 1, 3, 5, 9, 4, 9, 8]
  #   assert_equal expected, credit_check.sum_greater_than_nine
  # end
  #
  # def test_it_can_sum_numbers
  #   credit_check = CreditCheck.new("4929735477250543")
  #
  #   assert_equal 80, credit_check.sum_numbers
  # end
  #
  # def test_modulo_is_equal_to_zero_and_returns_true
  #   credit_check = CreditCheck.new("4929735477250543")
  #
  #   assert credit_check.valid_number?
  # end
  #
  # def test_modulo_is_not_equal_to_zero_and_returns_false
  #   credit_check = CreditCheck.new("5541801923795240")
  #
  #   refute credit_check.valid_number?
  # end
  #
  # def test_it_will_generate_valid_message
  #   credit_check = CreditCheck.new("4929735477250543")
  #
  #   expected = "The number 4929735477250543 is valid."
  #
  #   assert_equal expected, credit_check.validation_output
  # end
  #
  # def test_it_will_generate_invalid_message
  #   credit_check = CreditCheck.new("5541801923795240")
  #
  #   expected = "The number 5541801923795240 is invalid."
  #
  #   assert_equal expected, credit_check.validation_output
  # end
end
