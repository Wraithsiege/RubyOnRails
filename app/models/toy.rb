class Toy < ApplicationRecord
    validates :manufacturer, presence: true, uniqueness: true, length: { maximum: 30 }
    validates :type, presence: true, length: { minimum: 3, maximum: 30 }
    validates :name, presence: true, length: { minimum: 3, maximum: 30 }
    validates :color, presence: true, length: { minimum: 3, maximum: 30 }
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 100, less_than_or_equal_to: 10000 }
end
