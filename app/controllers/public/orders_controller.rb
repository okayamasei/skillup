class Public::OrdersController < ApplicationController
    def new
        @order = Order.new
        @user = current_end_user
    
    end

    def done
        
    end

    def confirm
        @cart = CartItem.all

        if params[:pay] == "pay1"
            @pay = "クレジットカード"
        else
            @pay = "銀行振込"
        end

        if params[:address] == "address1"
            @postal_code = current_end_user.now_postal_code
            @address = current_end_user.now_address
            @name = current_end_user.first_name,current_end_user.last_name
        else
            @postal_code = Address.postal_code
            @address = Address.address
            @name = Address.name
            
        end
    end

    def create
        
    end

    private

    def order_params
        params.require(:order).permit(:end_user_id,:address,:postal_code,:name,:purchase_date,:tax,:payment_method,:total,:postage,:status)
    end
    def address_params
        params.require(:adderess).permit(:postal_code,:name,:address)
       
    end
end
