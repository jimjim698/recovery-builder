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

  #def self.mentors
    #self.where("points > 10", "employed: true")
  #end

  def self.mentors
    mentors_array = []
    self.all.each do |m|
      if m.employed == true && m.points > 49
        mentors_array << m.name
      end
    end
    self.where(name:mentors_array).order(points: :desc)
  end

  def self.employed
    self.where(employed: true)
  end

  def self.ordered_by_points
    self.order(points: :desc)
  end

  def self.house_not_assigned
    self.where(house_id: nil)
  end


end
