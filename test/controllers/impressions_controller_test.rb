require "test_helper"

class ImpressionsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "#create should create a new impression" do
    @request.env["User-Agent"] = "TestUserAgent"
    @request.env["Referer"] = "http://www.example.com/test"
    
    get :create
    assigns(:impression).user_agent.should eq "TestUserAgent"
    assigns(:impression).referer.should eq "http://www.example.com/test"

    response.header["Content-Type"].should include "image/gif"
  end
end
