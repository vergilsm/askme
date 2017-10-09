class Question < ActiveRecord::Base
  belongs_to :user
  belongs_to :author, class_name: "User"
  has_and_belongs_to_many :tags

  validates :text, length: {maximum: 255}
  validates :text, :user, presence: true

  after_create do
    question = Question.find_by(id: self.id)
    hashtags = self.text.scan(/#\w+/)
    hashtags.uniq.map do |hashtag|
      tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
      question.tags << tag
    end
  end

#  before_update do
#    question = Question.find_by(id: self.id)
#    question.tags.clear
#    hashtags.uniq.map do |hashtag|
#      tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
#      question.tags << tag
#    end
#  end
end
