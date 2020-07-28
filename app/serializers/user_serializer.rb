class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :photo_url, :balance
  # has_many :user_charities
  has_many :charities, through: :user_charities
end
