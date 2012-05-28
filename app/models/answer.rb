class Answer < ActiveRecord::Base
  attr_accessible :answer, :question_id

  # Associations
  belongs_to :question
end
