class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :house
  belongs_to :house 
end
