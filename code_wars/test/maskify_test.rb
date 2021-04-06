require 'minitest/autorun'
require './lib/maskify'

class MaskifyTest < Minitest::Test 

  def test_it_exists 
    maskify = Maskify.new('abcd')
    assert_instance_of Maskify, maskify 
  end 

  def test_it_can_maskify
    maskify = Maskify.new('4556364607935616')
    assert_equal '############5616', maskify.encrypt
  end 

end 

# maskify('4556364607935616') # should return '############5616'
# maskify('64607935616')      # should return '#######5616'
# maskify('1')                # should return '1'
# maskify('')                 # should return ''

# # "What was the name of your first pet?"
# maskify('Skippy')                                   # should return '##ippy'
# maskify('Nananananananananananananananana Batman!') # should return '####################################man!'