class CreditCheck

  def valid_number?(card_number)
    converted_number = separate_and_reverse_characters(card_number)
    doubled = double_every_other_number(converted_number)
    nines = sum_greater_than_nine(doubled)
    sum = sum_numbers(nines)
    validity(sum)
  end

  def validation_output(card_number)
    valid = valid_number?(card_number)
    validation(valid, card_number)
  end

  def separate_and_reverse_characters(card_number)
    card_number.to_i.digits
  end

  def double_every_other_number(converted_number)
    converted_number.map.with_index do |num, i|
      if i.odd?
        num * 2
      else
        num
      end
    end
  end

  def sum_greater_than_nine(doubled)
    doubled.map do |num|
      if num > 9
        num - 9
      else
        num
      end
    end
  end

  def sum_numbers(nines)
    nines.sum
  end

  def validity(sum)
    if sum % 10 == 0
      true
    else
      false
    end
  end

  def validation(validity, credit_card)
    if validity == true
      "The number #{credit_card} is valid."
    else
      "The number #{credit_card} is invalid."
    end
  end
end
