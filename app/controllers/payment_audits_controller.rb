class PaymentAuditsController < ApplicationController
  before_action :set_payment_audit, only: [:show, :edit, :update, :destroy]

  # GET /payment_audits
  # GET /payment_audits.json
  def index
    @payment_audits = PaymentAudit.all
  end

  # GET /payment_audits/1
  # GET /payment_audits/1.json
  def show
  end

  # GET /payment_audits/new
  def new
    @payment_audit = PaymentAudit.new
  end

  # GET /payment_audits/1/edit
  def edit
  end

  # POST /payment_audits
  # POST /payment_audits.json
  def create
    @payment_audit = PaymentAudit.new(payment_audit_params)

    respond_to do |format|
      if @payment_audit.save
        format.html { redirect_to @payment_audit, notice: 'Payment audit was successfully created.' }
        format.json { render :show, status: :created, location: @payment_audit }
      else
        format.html { render :new }
        format.json { render json: @payment_audit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_audits/1
  # PATCH/PUT /payment_audits/1.json
  def update
    respond_to do |format|
      if @payment_audit.update(payment_audit_params)
        format.html { redirect_to @payment_audit, notice: 'Payment audit was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment_audit }
      else
        format.html { render :edit }
        format.json { render json: @payment_audit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_audits/1
  # DELETE /payment_audits/1.json
  def destroy
    @payment_audit.destroy
    respond_to do |format|
      format.html { redirect_to payment_audits_url, notice: 'Payment audit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_audit
      @payment_audit = PaymentAudit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_audit_params
      params.require(:payment_audit).permit(:payment_id, :amount_from, :amount_to, :payment_type_from, :payment_type_to, :datetime)
    end
end
