class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :url, :address, :lat, :lng, :rating, :price, :has_wifi, :open_late
end
