class CreditCheck

  attr_reader   :cc_number

  def initialize(cc_number)
    @cc_number = cc_number
  end

  def validate(cc_number)
    converted_number = separate_characters(cc_number)
    doubled = double_every_other_number(converted_number)
    nines = sum_greater_than_nine(doubled)
    sum = nines.sum
    validity = valid?(sum)
    generate_message(validity)
  end

  def separate_and_reverse_characters
    @cc_number.to_i.digits
  end

  def double_every_other_number
    @cc_number.map.with_index do |num, i|
      if i.odd?
        num * 2
      else
        num
      end
    end
  end

end
