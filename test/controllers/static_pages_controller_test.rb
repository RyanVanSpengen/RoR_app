
require 'test_helper'
class StaticPagesControllerTest < ActionDispatch::IntegrationTest

#def setup
 #   @base_title = "Making Beautiful Music. Together."
#end

  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get root_url
    assert_response :success
    assert_select "title", "Making Beautiful Music. Together."
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Making Beautiful Music. Together."
  end
  
  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Making Beautiful Music. Together."
  end
  
   test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Making Beautiful Music. Together."
  end
end
