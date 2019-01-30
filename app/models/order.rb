class Order < ApplicationRecord
    has_many :line_items
    
    accepts_nested_attributes_for :line_items
    
    def update_total
        self.items_count = self.line_items.count
        self.total = self.line_items.sum(:total)
        self.save!
    end
end
