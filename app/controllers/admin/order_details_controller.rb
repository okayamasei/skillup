class Admin::OrderDetailsController < ApplicationController
    def update
    order_detail = OrderItem.find(params[:id])
    order_detail.update(order_detail_params)
    redirect_to admin_order_path(order_item.id)
  end
  private
  def order_detail_params
    params.require(:order_detail).permit(:make_status)
  end
end