class Public::CartItemsController < ApplicationController

    def index
        @cartitems = CartItem.all
    end
    def create
       @cartitem = CartItem.new(cart_item_params)

       if   @cartitem.save
            redirect_to cart_items_path
       else
        redirect_to items_path
       end
    end
    def update
        @cartitem = CartItem.find(params[:id])
        if @cartitem.update(cart_item_params)
            redirect_to cart_items_path
        else
            render :index
        end
    end

    def destroy
        @cartitem = CartItem.find(params[:id])
        if @cartitem.destroy
        redirect_to cart_items_path
        else
            render :index
        end
    end


    private
    def cart_item_params
        params.require(:cart_item).permit(:end_user_id,:item_id,:amount)
    end
    
end
