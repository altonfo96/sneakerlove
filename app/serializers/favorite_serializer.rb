class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :sneaker_id

  has_many :user
  has_many :sneaker
end
