class Question < ActiveRecord::Base
  belongs_to :user
  belongs_to :author, class_name: "User"
  has_and_belongs_to_many :tags

  validates :text, length: {maximum: 255}
  validates :text, :user, presence: true

  before_create do
    hashtags = self.text.scan(/#\w+/)
    hashtags << self.answer.scan(/#\w+/) if answer.present?
    hashtags.uniq.map do |hashtag|
      tag = Tag.find_or_create_by(tagname: hashtag.downcase.delete('#'))
      self.tags << tag
    end
  end

  before_update do
    self.tags.clear
    hashtags = self.text.scan(/#\w+/)
    hashtags << self.answer.scan(/#\w+/) if answer.present?
    hashtags.uniq.map do |hashtag|
      tag = Tag.find_or_create_by(tagname: hashtag.downcase.delete('#'))
      self.tags << tag
    end
  end
end
