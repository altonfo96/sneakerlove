class Sneaker < ApplicationRecord
    has_many :users
    has_many :favorites, through: :users

    validates :price, presence:true
    validates :price, numericality: {greater_than: 0}
    validates :name, presence:true
    validates :image, presence:true
end
