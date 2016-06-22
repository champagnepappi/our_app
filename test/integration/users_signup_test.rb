require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
 test "valid signup" do
  	get users_path
  	assert_difference 'User.count', 1 do
  		post_via_redirect user_path, user: {name: "Kevin"
  			                        ,email: "bony@gmail.com",
  			                        password: "notless",
  			                        password_confirmation:"notless"}
  	end
  	render 'show'		                        
 end
end
