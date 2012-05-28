require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  def setup
    @q = questions(:question_one)
  end
  
  test "invalid without a title" do
    @q.title = nil
    assert @q.valid?, "Title is not being validated."
  end

  test "invalid without question details" do
    @q.details = nil
    assert @q.valid?, "Details is not being validated."
  end

  test "valid with all attributes" do
    @q = questions(:question_one)
    assert @q.valid?, "Question is not valid."
  end

  test "should contain answers to a question" do
    assert @q.answers.all? { |answer| answer.question == @q }
  end
end
