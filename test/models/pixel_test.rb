require 'test_helper'

class PixelTest < ActiveSupport::TestCase
  test "token is generated upon creation" do
    SecureRandom.expects(:hex).with(Pixel::TOKEN_LENGTH).returns("1234567890123456")
    pixel = Pixel.create()
    assert_equal pixel.token.length, Pixel::TOKEN_LENGTH
  end

  # test "the truth" do
  #   assert true
  # end
end
