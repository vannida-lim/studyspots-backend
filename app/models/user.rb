class User < ApplicationRecord
    has_many :favorites, dependent: :destroy
    has_many :reviews, dependent: :destroy

    has_secure_password 
    validates :username, presence: true, uniqueness: true
end
