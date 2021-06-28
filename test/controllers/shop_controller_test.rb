require "test_helper"

class ShopControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shop_index_url
    assert_response :success
    assert_select 'nav.side_nav a', minimum: 4
    assert_select 'main ul.catalog li', 3
    assert_select 'h2', 'Asus ROG 5'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end
end
