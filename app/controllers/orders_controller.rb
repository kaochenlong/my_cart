class OrdersController < ApplicationController
  before_action :user_only!, only: [:create, :index]

  def index
    @orders = current_user.orders
  end

  def create
    build_order

    if @order.save
      if payment.success?
        session[CART_SESSION] = nil
        redirect_to root_path, notice: "感謝您!"
      else
        # 失敗
        # render ...
      end
    else
      redirect_to root_path, alert: "失敗 UCCU"
    end
  end

  private
  def payment
    Braintree::Transaction.sale(
      amount: @cart.total_price,
      payment_method_nonce: params[:payment_method_nonce]
    )
  end

  def build_order
    @order = current_user.orders.build(order_params)
    @cart.items.each do |item|
      @order.order_items.build(
        product: item.product,
        quantity: item.quantity,
        price: item.price
      )
    end
  end

  def order_params
    params.require(:order).permit(
      :receipent,
      :tel,
      :address,
      :company_id
    )
  end
end
