require 'test_helper'

class HatTest < ActiveSupport::TestCase
  def test_what_goes_in_comes_back_out
    description = <<EOF
<span style="color: #800">SODA HAT IS A SLANG TERM FOR A LID</span>
EOF
    h = Hat.create(:name=>'Soda Hat', :description=>description)
    h.save
    assert_equal description, h.description
  end
end
