require 'test_helper'

class UserTest < ActiveSupport::TestCase
  should have_secure_password
end
