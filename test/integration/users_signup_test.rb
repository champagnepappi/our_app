require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
 test "invalid signup" do
  	get user_path
  	assert_difference 'User.count', 1 do
  		post_via_redirect user_path, user: {name: "",
  			                        email: "",
  			                        password: "notless",
  			                        password_confirmation:"notless" }
  	end
  	assert_template 'users/show'		                        
 end
end
