class Practice < ApplicationRecord
    validates :name, :age, :gender, :image, :description, presence: true
    validates :description, length: { minimum: 10 }
end
