class CreditCheck

  attr_reader   :cc_number

  def initialize(cc_number)
    @cc_number = cc_number
  end

  def validate


  end

  def separate_characters
    cc_number.to_i.digits
  end
end
