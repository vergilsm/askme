module QuestionsHelper
  def render_with_hashtags(text)
    regex = QuestionsController::TAG_REGEX
    text.gsub(regex){|word| link_to word, "/questions/hashtag/#{word.delete('#"[]')}"}.html_safe
  end
end
