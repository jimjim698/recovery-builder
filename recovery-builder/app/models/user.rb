class User < ActiveRecord::Base
  belongs_to :house
  has_many :completions
  has_many :goals, through: :completions

end
