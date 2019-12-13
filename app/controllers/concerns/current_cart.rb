module CurrentCart
#Ruby, S. and Thomas, D., 2009. Agile web development with rails. Raleigh, NC: Pragmatic Bookshelf. source
private

  def set_cart
    @cart = Cart.find(session[:cart_id])
   rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
   end
end
