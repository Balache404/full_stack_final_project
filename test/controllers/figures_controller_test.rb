require 'test_helper'

class FiguresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get figures_index_url
    assert_response :success
  end

  test "should get show" do
    get figures_show_url
    assert_response :success
  end

end
