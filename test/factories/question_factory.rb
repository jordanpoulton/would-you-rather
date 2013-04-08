require_relative './user_factory'

class QuestionFactory
  class << self

    def legit_question
      Question.new(
        option_true: "No hands",
        option_false: "No feet",
        user_id: UserFactory.jordan_user)
    end
  end
end
