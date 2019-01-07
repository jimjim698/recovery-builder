class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :house, :highlights
  belongs_to :house
  has_many :highlights
end
