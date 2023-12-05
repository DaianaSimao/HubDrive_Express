class LeasingCarsController < ApplicationController
  before_action :set_leasing_car, only: %i[ show edit update destroy ]

  # GET /leasing_cars or /leasing_cars.json
  def index
    @leasing_cars = LeasingCar.all
  end

  # GET /leasing_cars/1 or /leasing_cars/1.json
  def show
  end

  # GET /leasing_cars/new
  def new
    @leasing_car = LeasingCar.new
  end

  # GET /leasing_cars/1/edit
  def edit
  end

  # POST /leasing_cars or /leasing_cars.json
  def create
    @leasing_car = LeasingCar.new(leasing_car_params)

    respond_to do |format|
      if @leasing_car.save
        format.html { redirect_to leasing_car_url(@leasing_car), notice: "Leasing car was successfully created." }
        format.json { render :show, status: :created, location: @leasing_car }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @leasing_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leasing_cars/1 or /leasing_cars/1.json
  def update
    respond_to do |format|
      if @leasing_car.update(leasing_car_params)
        format.html { redirect_to leasing_car_url(@leasing_car), notice: "Leasing car was successfully updated." }
        format.json { render :show, status: :ok, location: @leasing_car }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @leasing_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leasing_cars/1 or /leasing_cars/1.json
  def destroy
    @leasing_car.destroy

    respond_to do |format|
      format.html { redirect_to leasing_cars_url, notice: "Leasing car was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leasing_car
      @leasing_car = LeasingCar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def leasing_car_params
      params.require(:leasing_car).permit(:leasing_type_id, :date_leasing, :return_date, :leasing_value, :payment_method_id, :card_id, :number, :cvv, :due_date, :cardholder_name, :personal_iden_number, :car_model_id, :people_id)
    end
end
