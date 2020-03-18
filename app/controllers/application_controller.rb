class ApplicationController < ActionController::Base
    
    private
    
    def after_sign_in_path_for(resource)
    case resource
    when Admin
        admin_items_path
    when EndUser
        end_user_path(current_end_user.id)
    end
    end


    def after_sign_out_path_for(resource)
    case resource
    when :admin
        new_admin_session_path
    when :end_user
        new_end_user_session_path
    end
    end

    helper_method :current_cart
	def current_cart
        if session[:cart_item_id]
        @cartitem = CartItem.find(session[:cart_item_id])
        else
        @cartitem = CartItem.create
        session[:cart_item_id] = @cartitem.id
        end
    end
end
