class User < ApplicationRecord

    has_secure_password # set up bcrypt password for JWT

    has_many :routines, dependent: :destroy

    validates :email, uniqueness: true
    
end
