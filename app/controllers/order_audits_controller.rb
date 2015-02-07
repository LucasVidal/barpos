class OrderAuditsController < ApplicationController
  before_action :set_order_audit, only: [:show, :edit, :update, :destroy]

  # GET /order_audits
  # GET /order_audits.json
  def index
    @order_audits = OrderAudit.all
  end

  # GET /order_audits/1
  # GET /order_audits/1.json
  def show
  end

  # GET /order_audits/new
  def new
    @order_audit = OrderAudit.new
  end

  # GET /order_audits/1/edit
  def edit
  end

  # POST /order_audits
  # POST /order_audits.json
  def create
    @order_audit = OrderAudit.new(order_audit_params)

    respond_to do |format|
      if @order_audit.save
        format.html { redirect_to @order_audit, notice: 'Order audit was successfully created.' }
        format.json { render :show, status: :created, location: @order_audit }
      else
        format.html { render :new }
        format.json { render json: @order_audit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_audits/1
  # PATCH/PUT /order_audits/1.json
  def update
    respond_to do |format|
      if @order_audit.update(order_audit_params)
        format.html { redirect_to @order_audit, notice: 'Order audit was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_audit }
      else
        format.html { render :edit }
        format.json { render json: @order_audit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_audits/1
  # DELETE /order_audits/1.json
  def destroy
    @order_audit.destroy
    respond_to do |format|
      format.html { redirect_to order_audits_url, notice: 'Order audit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_audit
      @order_audit = OrderAudit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_audit_params
      params.require(:order_audit).permit(:order_id, :datetime, :status_from, :status_to)
    end
end
