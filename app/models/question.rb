class Question < ActiveRecord::Base
  belongs_to :user
  belongs_to :author, class_name: "User"

  validates :text, length: {maximum: 255}
  validates :text, :user, presence: true
end
