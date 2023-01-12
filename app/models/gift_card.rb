class GiftCard < ApplicationRecord
    validates :value, presence: true, numericality: { greater_than_or_equal_to: 500, less_than_or_equal_to: 10000 }
end
