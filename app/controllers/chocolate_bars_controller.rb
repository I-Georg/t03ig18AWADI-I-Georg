class ChocolateBarsController < ApplicationController
  before_action :set_chocolate_bar, only: [:show, :edit, :update, :destroy]

  # GET /chocolate_bars
  # GET /chocolate_bars.json
  def index
    @chocolate_bars = ChocolateBar.all
  end

  # GET /chocolate_bars/1
  # GET /chocolate_bars/1.json
  def show
  end

  # GET /chocolate_bars/new
  def new
    @chocolate_bar = ChocolateBar.new
  end

  # GET /chocolate_bars/1/edit
  def edit
  end

  # POST /chocolate_bars
  # POST /chocolate_bars.json
  def create
    @chocolate_bar = ChocolateBar.new(chocolate_bar_params)

    respond_to do |format|
      if @chocolate_bar.save
        format.html { redirect_to @chocolate_bar, notice: 'Chocolate bar was successfully created.' }
        format.json { render :show, status: :created, location: @chocolate_bar }
      else
        format.html { render :new }
        format.json { render json: @chocolate_bar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chocolate_bars/1
  # PATCH/PUT /chocolate_bars/1.json
  def update
    respond_to do |format|
      if @chocolate_bar.update(chocolate_bar_params)
        format.html { redirect_to @chocolate_bar, notice: 'Chocolate bar was successfully updated.' }
        format.json { render :show, status: :ok, location: @chocolate_bar }
      else
        format.html { render :edit }
        format.json { render json: @chocolate_bar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chocolate_bars/1
  # DELETE /chocolate_bars/1.json
  def destroy
    @chocolate_bar.destroy
    respond_to do |format|
      format.html { redirect_to chocolate_bars_url, notice: 'Chocolate bar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chocolate_bar
      @chocolate_bar = ChocolateBar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chocolate_bar_params
      params.require(:chocolate_bar).permit(:bar_name, :price, :quantity, :compamny_maker, :review_date, :cocoa_percent, :bean_origin)
    end
end
