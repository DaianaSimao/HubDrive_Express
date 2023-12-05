class LeasingsController < ApplicationController
  before_action :set_leasing, only: %i[ show edit update destroy ]

  # GET /leasings or /leasings.json
  def index
    @leasings = Leasing.all
  end

  # GET /leasings/1 or /leasings/1.json
  def show
  end

  # GET /leasings/new
  def new
    @leasing = Leasing.new
  end

  # GET /leasings/1/edit
  def edit
  end

  # POST /leasings or /leasings.json
  def create
    @leasing = Leasing.new(leasing_params)

    respond_to do |format|
      if @leasing.save
        format.html { redirect_to leasing_url(@leasing), notice: "Leasing was successfully created." }
        format.json { render :show, status: :created, location: @leasing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @leasing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leasings/1 or /leasings/1.json
  def update
    respond_to do |format|
      if @leasing.update(leasing_params)
        format.html { redirect_to leasing_url(@leasing), notice: "Leasing was successfully updated." }
        format.json { render :show, status: :ok, location: @leasing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @leasing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leasings/1 or /leasings/1.json
  def destroy
    @leasing.destroy

    respond_to do |format|
      format.html { redirect_to leasings_url, notice: "Leasing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leasing
      @leasing = Leasing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def leasing_params
      params.require(:leasing).permit(:leasing_type_id, :date_leasing, :return_date, :leasing_value, :payment_method_id, :card_id, :number, :cvv, :due_date, :cardholder_name, :persona_iden_number)
    end
end
