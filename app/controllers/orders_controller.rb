class OrdersController < ApplicationController
  #code taken from Rails5 book
include CurrentCart
before_action :set_cart, only: [:new, :create]
before_action :ensure_shoppingcart_not_empty, only: :new
before_action :set_order, only: [:show, :edit, :update, :destroy]
#before_action :authenticate_user!
#before_action :authenticate_admin!
# def authenticate_admin!
 # authenticate_user!
 # redirect_to '/', status: :forbidden unless current_user.admin?
#end
  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
#source Ruby, S. and Thomas, D., 2009. Agile web development with rails. Raleigh, NC: Pragmatic Bookshelf.
    @order = Order.new(order_params)
    @order.add_line_items_from_shoppingcart(@cart)
    #@cart = Cart.find(:id)
    respond_to do |format|
      if @order.save
         Cart.destroy(session[:cart_id])
         session[:cart_id] = nil
        OrderMailer.received(@order).deliver_later
        format.html { redirect_to shop_index_url, notice: 'Your order was sent. Thank you.We will sent you an email soon' }  
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:name, :address, :email, :pay_type)
    end
#source Rails5 book
    def ensure_shoppingcart_not_empty
      if @cart.line_items.empty?
      redirect_to shop_index_url, notice: 'Your shopping cart is empty'
      end
     end
end
