class Item < ApplicationRecord
    belongs_to :genre
    has_many :cart_items
    has_many :order_details

    def self.search(search)
      if search
        Item.where(['content LIKE ?', "%#{search}%"])
      else
        Item.all
      end
    end
end
