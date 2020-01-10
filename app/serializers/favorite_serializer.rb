class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :location_id
  # has_one :user
  # has_one :location
  belongs_to :user
  belongs_to :location
end
