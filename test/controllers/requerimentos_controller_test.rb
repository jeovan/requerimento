require "test_helper"

class RequerimentosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get requerimentos_index_url
    assert_response :success
  end
end
