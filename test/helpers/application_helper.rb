require 'test_helper'

class ApplicatonHelperTest < ActionView::TestCase
  
  def title_text
    "Making Beautiful Music. Together."
  end
  
  test 'full title helper' do
    assert_same full_title(""), "#{title_text}"
    assert_same full_title("Contact"), "Contact | #{title_text}"
    assert_same full_title("Help"), "Help | #{title_text}"
    assert_same full_title("About"), "About | #{title_text}"
  end