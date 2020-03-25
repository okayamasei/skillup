class Address < ApplicationRecord

    belongs_to :end_user
    def other_address_info
    return "〒#{self.now_postal_code}　住所：#{self.now_address}　宛名：#{self.first_name}"
  end
end
