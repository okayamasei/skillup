class Public::OrdersController < ApplicationController
    def new
  end

  def confirm
    @order_payment_method = params[:order][:payment_method]
    @order_delivery_info_kind = params[:order][:delivery_info_kind]
    case @order_delivery_info_kind
    when 'other'
      @other_address = Address.find(params[:other][:address_id])
    when 'new'
      @new_post_code = params[:new][:postal_code]
      @new_street_address = params[:new][:address]
      @new_name = params[:new][:name]
    end
    @new_order = Order.new
  end

  def create
    new_order = Order.new(order_params)
    new_order.end_user_id = current_end_user.id
    puts new_order
    new_order.save
    current_end_user.cart_items.each do |c_i|
      OrderDetail.create(order_id: new_order.id, item_id: c_i.item_id, amount: c_i.amount)
      c_i.destroy
    end
    redirect_to done_orders_path
  end

  def done
  end

  def index
    @all_orders = Order.all.includes(:order_items)
  end

  private
  def order_params
    params.require(:order).permit(:payment_method, :postal_code, :address, :name)
  end
end
