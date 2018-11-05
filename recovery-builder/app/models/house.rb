class House < ActiveRecord::Base
  validates :name, :presence => true
  validates  :name, :uniqueness => true
  has_many :users
  has_many :goals
  has_many :highlights, through: :users

end
