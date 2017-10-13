class Tag < ActiveRecord::Base
  has_and_belongs_to_many :questions

  validates :tagname, uniqueness: true
  validates :tagname, length: {maximum: 23}
  before_validation :tagname_downcase

  def tagname_downcase
    self.tagname.downcase!
  end
end
