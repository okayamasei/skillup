class Order < ApplicationRecord
    belongs_to :end_user

    enum payment_method:{クレジットカード:0,銀行振込:1}
    enum status: [入金待ち:0,入金済み:1,発送済み:2]
end
