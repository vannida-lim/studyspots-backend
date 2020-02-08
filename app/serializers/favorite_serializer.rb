class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user, :location
  # has_one :user
  # has_one :location
  belongs_to :user
  belongs_to :location
end
