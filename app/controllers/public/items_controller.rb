class Public::ItemsController < ApplicationController
    def top
    end
    def index
        
        @items = Item.paginate(page: params[:page], per_page: 50).search(params[:search])

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
