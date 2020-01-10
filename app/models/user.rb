class User < ApplicationRecord
    has_many :favorites, dependent: :destroy
    has_many :reviews, dependent: :destroy
end
