class Question < ActiveRecord::Base

  belongs_to :user

  validates :text, length: { maximum: 255 }
  validates :text, :user, presence: true
end
