class Item < ApplicationRecord
    belongs_to :genre
    has_many :cart_items
    has_many :order_details

    def self.search(search)
      if search
        Item.where(['name LIKE ?', "%#{search}%"])
      else
        Item.all
      end
    end
    def self.search(search) #self.はUser.を意味する
     if search
       where(['name LIKE ?', "%#{search}%"]) #検索とuseanameの部分一致を表示。
     else
       all #全て表示させる
      end
    end
end
