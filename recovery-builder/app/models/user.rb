class User < ActiveRecord::Base
  validates :name, :presence => true
  validates  :name, :uniqueness => true
  has_secure_password
  belongs_to :house
  has_many :completions
  has_many :goals, through: :completions

  def current_user
    @user = User.find(params[:user_id])
  end 

end
