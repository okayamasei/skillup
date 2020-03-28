class Order < ApplicationRecord
    belongs_to :end_user
    has_many :order_details

    enum payment_method: {credit: 0, delivery: 1, convenience_store: 2}
    enum status: ['入金待ち','入金確認','制作中','発送準備中','発送済み']

    def order_address_info
    return "〒#{self.postal_code} 住所:#{self.address} 宛名:#{self.name}"
  end
end
