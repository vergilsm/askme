module UsersHelper
  def count_questions(questions)
    I18n.t 'question', count: questions.count
  end
end
