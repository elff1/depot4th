require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', minumum: 4
    assert_select '#main .entry', 3
    #assert_select 'h3', 'Programming Ryby 1.9'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

end
