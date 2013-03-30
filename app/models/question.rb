class Question < ActiveRecord::Base
  attr_accessible :answer, :option_false, :option_true

  has_many :answers
end
