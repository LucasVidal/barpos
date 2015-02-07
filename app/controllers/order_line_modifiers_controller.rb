class OrderLineModifiersController < ApplicationController
  before_action :set_order_line_modifier, only: [:show, :edit, :update, :destroy]

  # GET /order_line_modifiers
  # GET /order_line_modifiers.json
  def index
    @order_line_modifiers = OrderLineModifier.all
  end

  # GET /order_line_modifiers/1
  # GET /order_line_modifiers/1.json
  def show
  end

  # GET /order_line_modifiers/new
  def new
    @order_line_modifier = OrderLineModifier.new
  end

  # GET /order_line_modifiers/1/edit
  def edit
  end

  # POST /order_line_modifiers
  # POST /order_line_modifiers.json
  def create
    @order_line_modifier = OrderLineModifier.new(order_line_modifier_params)

    respond_to do |format|
      if @order_line_modifier.save
        format.html { redirect_to @order_line_modifier, notice: 'Order line modifier was successfully created.' }
        format.json { render :show, status: :created, location: @order_line_modifier }
      else
        format.html { render :new }
        format.json { render json: @order_line_modifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_line_modifiers/1
  # PATCH/PUT /order_line_modifiers/1.json
  def update
    respond_to do |format|
      if @order_line_modifier.update(order_line_modifier_params)
        format.html { redirect_to @order_line_modifier, notice: 'Order line modifier was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_line_modifier }
      else
        format.html { render :edit }
        format.json { render json: @order_line_modifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_line_modifiers/1
  # DELETE /order_line_modifiers/1.json
  def destroy
    @order_line_modifier.destroy
    respond_to do |format|
      format.html { redirect_to order_line_modifiers_url, notice: 'Order line modifier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_line_modifier
      @order_line_modifier = OrderLineModifier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_line_modifier_params
      params.require(:order_line_modifier).permit(:order_line_id, :modifier_id)
    end
end
