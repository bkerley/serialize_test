require 'test_helper'

class HatTest < ActiveSupport::TestCase
  def test_what_goes_in_comes_back_out
    description = <<EOF
<span style="color: #800">SODA HAT IS A SLANG TERM FOR A LID</span>
EOF
    h = Hat.new(:name=>'Soda Hat', :description=>description)
    assert_equal description, h.description
    h.save
    assert_equal description, h.description
  end
  
  def test_actually_serializing
    description = {:hat=>'awesome'}
    h = Hat.create(:name=>'awesome hat', :description=>description)
    h.save
    assert_equal description, h.description
  end
end
