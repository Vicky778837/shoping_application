class Product < ApplicationRecord
    has_one_attached :avatar
    has_many :line_items, dependent: :destroy
end
