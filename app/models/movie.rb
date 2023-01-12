class Movie < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: { maximum: 30 }
    validates :genre, presence: true, length: { minimum: 3, maximum: 30 }
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 800 }
end
