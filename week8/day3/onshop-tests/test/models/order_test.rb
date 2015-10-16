require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  should belong_to(:user)
end
