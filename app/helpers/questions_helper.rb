module QuestionsHelper
  def render_with_hashtags(text)
    text.gsub(/#[\u0400-\u04FF]*/){|word| link_to word, "/questions/hashtag/#{word.delete('#"[]')}"}.html_safe
  end
end
