class Goal < ActiveRecord::Base
  belongs_to :house
  has_many :completions
  has_many :users, through: :completions
end
