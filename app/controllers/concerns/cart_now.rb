#source Rails5 book - creating a cart,looking for a card with id from session
module CartNow

private


    def build_cart
     @cart = ProductCart.find(session[:cart_id])
     rescue ActiveRecord::RecordNotFound
     @cart = ProductCart.create
      session[:cart_id] = @cart.id
   end
end


