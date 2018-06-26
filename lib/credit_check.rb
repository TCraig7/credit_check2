class CreditCheck

  attr_reader   :cc_number

  def initialize(cc_number)
    @cc_number = cc_number
  end

  def validation_output(cc_number)
    converted_number = separate_and_reverse_characters(cc_number)
    doubled = double_every_other_number(converted_number)
    nines = sum_greater_than_nine(doubled)
    sum = sum_numbers(nines)
    validity = valid_number?(sum)
    validation_output(validity)
  end

  def separate_and_reverse_characters(card_number)
    card_number.to_i.digits
  end

  def double_every_other_number(card_number)
    card_number.map.with_index do |num, i|
      if i.odd?
        num * 2
      else
        num
      end
    end
  end

  def sum_greater_than_nine(card_number)
    card_number.map do |num|
      if num > 9
        num - 9
      else
        num
      end
    end
  end

  def sum_numbers(card_number)
    card_number.sum
  end

  def valid_number?(card_number)
    if card_number % 10 == 0
      true
    else
      false
    end
  end

  def validation_output(card_number)
    if card_number == true
      "The number #{@cc_number} is valid."
    else
      "The number #{@cc_number} is invalid."
    end
  end
end
