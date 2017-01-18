require 'rails_helper'

class Cart
end

RSpec.describe Cart, type: :model do

#基本功能：

#1. 可以新增商品到購物車裡，然後購物車裡就有東西了。
#2. 如果加了相同種類的商品到購物車裡，購買項目(CartItem)並不會增加，但數量會改變。
#3. 商品可以放到購物車裡，也可以再拿出來。
#4. 可以計算整台購物車的總消費金額。

#進階功能：

#* 因為購物車將以 Session 方式儲存，所以：
  #* 可以將購物車內容轉換成 Hash
  #* 也可以把 Hash 還原成購物車的內容

end

