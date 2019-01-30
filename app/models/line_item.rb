class LineItem < ApplicationRecord
    belongs_to :order
    belongs_to :item

    delegate :update_total, to: :order    
    
    before_validation :set_item_detail
    
    after_save :update_total
    before_destroy :update_stock_total

    def set_item_detail
        item = Item.find self.item_id
        if item.quantity < self.quantity
            self.errors.add(:base, "Item out of Stock")
        else
            item.quantity = item.quantity - self.quantity
            item.save!
        end
        self.name = item.name
        self.description = item.description
        self.price = item.price
        self.total = item.price * self.quantity
    end
    
    
    def update_stock_total
        item = self.item
        item.quantity = item.quantity + self.quantity
    end
end
