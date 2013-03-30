class Question < ActiveRecord::Base
  attr_accessible :answer, :option_false, :option_true, :user_id
  belongs_to :user
  has_many :answers
end
