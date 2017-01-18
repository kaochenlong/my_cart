require 'rails_helper'

RSpec.describe Cart, type: :model do

describe "基本功能" do
  it "可以新增商品到購物車裡，然後購物車裡就有東西了。" do
    cart = Cart.new
    expect(cart).to be_empty

    cart.add_item(1)
    expect(cart).not_to be_empty
  end

  # 如果加了相同種類的商品到購物車裡，購買項目(CartItem)並不會增加，但數量會改變。
  # 商品可以放到購物車裡，也可以再拿出來。
  # 可以計算整台購物車的總消費金額。
  # 每個 Cart Item 都可以計算它自己的金額(小計)
  # 特別活動可能可搭配折扣(例如聖誕節的時候全面打 9 折，或是滿額滿千送百)
end

describe "進階功能" do
#* 可以將購物車內容轉換成 Hash
#* 也可以把 Hash 還原成購物車的內容
end

end

