require 'test_helper'

class ApplicationLayoutTest < ActionDispatch::IntegrationTest

  test "should get links for application layout" do
     get root_path
     assert_template 'static_pages/home'
     assert_select "a[href=?]", root_path
     assert_select "a[href=?]", static_pages_about_path
     assert_select "a[href=?]", static_pages_help_path
     assert_select "a[href=?]", static_pages_contact_path
  end
end
