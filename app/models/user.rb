class User < ApplicationRecord
    has_many :favorites
    has_many :sneakers, through: :favorites

    validates :email, presence:true
    validates :user_name, presence:true
    validates :password, presence:true
end
