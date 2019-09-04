class Book < ApplicationRecord
    belongs_to :bookcase 

    validates :title, :author, presence: true
    validates :page_count, numericality: { only_integer: true }
    validates :spine_color, format: { with: /\A#?(?:[A-F0-9]{3}){1,2}\z/i, message: "please enter a 6-digit hex code"}
end
