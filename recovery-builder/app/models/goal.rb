class Goal < ActiveRecord::Base
  validates :name, :presence => true
  validates  :name, :uniqueness => true
  belongs_to :house
  has_many :completions
  has_many :users, through: :completions
end
