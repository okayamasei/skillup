class Admin::OrdersController < ApplicationController
    def index
        @all_orders = Order.all
    end
    def show
        @order = Order.find(params[:id])
    end

    def update
        order = Order.find(params[:id])
        # 入金待ちから変更するなら(現在入金待ち)
        if order.status == '入金待ち'
        order.order_edtails.each do |o_i|
            o_i.update(make_status: '制作待ち')
        end
        end
        # 入金待ちに変更するなら(現在入金待ち以外)
        if order_params[:status] == '入金待ち'
        order.order_details.each do |o_i|
            o_i.update(make_status: '着手不可')
        end
        end
        order.update(order_params)
        redirect_to admin_orders_path
    end
    private
    def order_params
        params.require(:order).permit(:status)
    end
    def make_params
        params.require(:order_detail).permit(:make_status)
    end
end
