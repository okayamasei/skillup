class Public::ItemsController < ApplicationController
    def top
    end
    def index
        
    end
    def show
        @item = Item.find(params[:id])
        
        @cartitem = CartItem.new
    end

    def search
        #Viewのformで取得したパラメータをモデルに渡す
        @item = Item.search(params[:search])
    end

    private
    def item_params
        params.require(:item).permit(:name,:text,:non_taxed_price)
    end

end
