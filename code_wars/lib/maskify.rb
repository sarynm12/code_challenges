class Maskify 
  attr_reader :input 

  def initialize(input)
    @input = input 
  end 

  def encrypt 
    array = @input.chars 
    last4 = array.pop(4)
    new = array.map do |char|
      '#'
    end 
    result = new << last4
    result.flatten.join 
  end 

end 

# Usually when you buy something, you're asked whether your credit card number, phone number or answer to your most secret question is still correct. However, since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it.

# Your task is to write a function maskify, which changes all but the last four characters into '#'.