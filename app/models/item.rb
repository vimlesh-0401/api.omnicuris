class Item < ApplicationRecord

    validates :name, :price, :quantity, presence: true
end
