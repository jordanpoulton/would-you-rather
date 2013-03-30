class Answer < ActiveRecord::Base
  attr_accessible :answer, :comment, :user_id, :question_id

  belongs_to :user
  belongs_to :question
end
