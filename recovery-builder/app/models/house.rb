class House < ActiveRecord::Base
  has_many :users
  has_many :goals 
end
