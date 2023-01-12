class CongratulationsCard < ApplicationRecord
    validates :type, presence: true, uniqueness: true, length: { maximum: 30 }
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 100, less_than_or_equal_to: 500 }
end
