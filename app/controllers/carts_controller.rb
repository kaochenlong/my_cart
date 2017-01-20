class CartsController < ApplicationController

  def add
    product = Product.find_by(id: params[:id])
    if product
      @cart.add_item(product.id)
      session[:my_shopping_cart426] = @cart.serialize
      redirect_to root_path, notice: "已放至購物車"
    else
      redirect_to root_path, notice: "查無此商品"
    end
  end

  def show
  end

  def destroy
    session[:my_shopping_cart426] = nil
    redirect_to root_path, notice: "購物車已清除"
  end

end
