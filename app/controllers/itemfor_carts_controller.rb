class ItemforCartsController < ApplicationController
  include CartNow
  before_action :build_cart, only: [:create]
  before_action :set_itemfor_cart, only: [:show, :edit, :update, :destroy]

  # GET /itemfor_carts
  # GET /itemfor_carts.json
  def index
    @itemfor_carts = ItemforCart.all
     
  end

  # GET /itemfor_carts/1
  # GET /itemfor_carts/1.json
  def show
   
  end

  # GET /itemfor_carts/new
  def new
    @itemfor_cart = ItemforCart.new
    
  end

  # GET /itemfor_carts/1/edit
  def edit
  end

  # POST /itemfor_carts
  # POST /itemfor_carts.json
  def create
    @itemfor_cart = ItemforCart.new(itemfor_cart_params)
    chocolate_bar = ChocolateBar.find(params[:chocolate_bar_id])
    @itemfor_cart = @cart.itemfor_cart.build(chocolate_bar: chocolate_bar)
    respond_to do |format|
      if @itemfor_cart.save
        format.html { redirect_to @itemfor_cart.cart, notice: 'Itemfor cart was successfully created.' }
        format.json { render :show, status: :created, location: @itemfor_cart }
      else
        format.html { render :new }
        format.json { render json: @itemfor_cart.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /itemfor_carts/1
  # PATCH/PUT /itemfor_carts/1.json
  def update
    respond_to do |format|
      if @itemfor_cart.update(itemfor_cart_params)
        format.html { redirect_to @itemfor_cart, notice: 'Itemfor cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @itemfor_cart }
      else
        format.html { render :edit }
        format.json { render json: @itemfor_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itemfor_carts/1
  # DELETE /itemfor_carts/1.json
  def destroy
    @itemfor_cart.destroy
    respond_to do |format|
      format.html { redirect_to itemfor_carts_url, notice: 'Itemfor cart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itemfor_cart
      @itemfor_cart = ItemforCart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def itemfor_cart_params
      params.require(:itemfor_cart).permit(:chocolate_bar_id, :cart_id)
      
    end
end
