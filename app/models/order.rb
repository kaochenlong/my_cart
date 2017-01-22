class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items

  def serial
    "OD#{id.to_s.rjust(10, "0")}"
  end
end
