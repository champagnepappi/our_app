require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
    common_title = " | Our App"
  

  test "should get home" do
    get root_url
    assert_response :success
    assert_select "title", "Home#{common_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help#{common_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About#{common_title}"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact#{common_title}"
  end

  
end
