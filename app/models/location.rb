class Location < ApplicationRecord
    has_many :favorites, dependent: :destroy
    has_many :reviews, dependent: :destroy

    def self.add_business_by_db_json(business)
        self.create(
            name: business["name"],
            image_url: business["image_url"],
            url: business["url"],
            location: business["location"]["display_address"].join(", "),
            lat: business["coordinates"]["latitude"],
            lng: business["coordinates"]["longitude"],
            rating: business["rating"],
            price: business["price"],
            has_wifi: business["has_wifi"],
            open_late: business["open_late"]
        )
       
    end
# self.add_business_by_db_json(business)
  
end
