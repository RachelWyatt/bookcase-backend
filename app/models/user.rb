class User < ApplicationRecord
    has_secure_password
    has_many :bookcases
    has_many :books, through: :bookcases
end
