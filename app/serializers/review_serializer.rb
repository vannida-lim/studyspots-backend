class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :location_id
  # has_one :user
  # has_one :location
  belongs_to :user
  belongs_to :location
end
