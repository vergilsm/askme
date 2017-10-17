class Tag < ActiveRecord::Base
  has_and_belongs_to_many :questions

  validates :name, uniqueness: true
  validates :name, length: {maximum: 23}
  before_validation :tagname_downcase

  def tagname_downcase
    self.name.downcase!
  end
end
