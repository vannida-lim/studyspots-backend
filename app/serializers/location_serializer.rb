class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :address, :has_wifi, :open_late
end
