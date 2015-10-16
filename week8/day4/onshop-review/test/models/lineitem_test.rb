require 'test_helper'

class LineitemTest < ActiveSupport::TestCase
  should belong_to(:order)
  should belong_to(:item)
end
