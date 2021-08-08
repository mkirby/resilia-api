class UserSerializer < ActiveModel::Serializer
  attributes :id
  has_many :notifications
end
