class Question < ActiveRecord::Base
  attr_accessible :answers, :option_false, :option_true, :user_id
  belongs_to :user
  has_many :answers

  validates :option_true, presence: true, uniqueness: true
  validates :option_false, presence: true, uniqueness: true
end
