require "test_helper"

class PurgatoryControllerTest < ActionDispatch::IntegrationTest
  test "should get library" do
    get purgatory_library_url
    assert_response :success
  end
end
