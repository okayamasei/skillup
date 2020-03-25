class EndUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_paranoid

  has_many :cart_items
  has_many :orders
  has_many :addresses

  def full_name
    return self.last_name + self.first_name
  end
  def address_info
    return '〒' + self.now_postal_code + "住所：" + self.now_address + "宛名：" + self.full_name
  end
  
  
end
