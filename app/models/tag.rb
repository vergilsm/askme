class Tag < ActiveRecord::Base
  has_and_belongs_to_many :questions

  validates :name, presence: true, format: /(?:\s|^)(#(?!(?:\d+|\w+?_|_\w+?)(?:\s|$))([a-z0-9\-_]+))/i
  validates :name, uniqueness: true, length: {maximum: 23}
  before_validation :name_downcase

  def name_downcase
    self.name.downcase!
  end
end
