require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  test "should render index page" do
    get :index
    assert_response :success
    assert_not_nil assigns :questions
  end

  test "should render new page" do
    get :new
    assert_response :success
    assert_not_nil assigns :question
  end

  test "should render show page" do
    get :show
    assert_response :success
    assert_not_nil assigns :question
  end
end
