class ProductModifiersController < ApplicationController
  before_action :set_product_modifier, only: [:show, :edit, :update, :destroy]

  # GET /product_modifiers
  # GET /product_modifiers.json
  def index
    @product_modifiers = ProductModifier.all
  end

  # GET /product_modifiers/1
  # GET /product_modifiers/1.json
  def show
  end

  # GET /product_modifiers/new
  def new
    @product_modifier = ProductModifier.new
  end

  # GET /product_modifiers/1/edit
  def edit
  end

  # POST /product_modifiers
  # POST /product_modifiers.json
  def create
    @product_modifier = ProductModifier.new(product_modifier_params)

    respond_to do |format|
      if @product_modifier.save
        format.html { redirect_to @product_modifier, notice: 'Product modifier was successfully created.' }
        format.json { render :show, status: :created, location: @product_modifier }
      else
        format.html { render :new }
        format.json { render json: @product_modifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_modifiers/1
  # PATCH/PUT /product_modifiers/1.json
  def update
    respond_to do |format|
      if @product_modifier.update(product_modifier_params)
        format.html { redirect_to @product_modifier, notice: 'Product modifier was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_modifier }
      else
        format.html { render :edit }
        format.json { render json: @product_modifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_modifiers/1
  # DELETE /product_modifiers/1.json
  def destroy
    @product_modifier.destroy
    respond_to do |format|
      format.html { redirect_to product_modifiers_url, notice: 'Product modifier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_modifier
      @product_modifier = ProductModifier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_modifier_params
      params.require(:product_modifier).permit(:product_id, :modifier_id)
    end
end
