class User < ActiveRecord::Base
  has_secure_password
  belongs_to :house
  has_many :completions
  has_many :goals, through: :completions

end
