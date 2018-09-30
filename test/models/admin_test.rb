require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @admin = Admin.new(name: "Test User", email: "admin@test.com", password: "Example", password_confirmation: "Example")
  end
end
