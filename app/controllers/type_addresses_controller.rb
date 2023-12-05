class TypeAddressesController < ApplicationController
  before_action :set_type_address, only: %i[ show edit update destroy ]

  # GET /type_addresses or /type_addresses.json
  def index
    @type_addresses = TypeAddress.all
  end

  # GET /type_addresses/1 or /type_addresses/1.json
  def show
  end

  # GET /type_addresses/new
  def new
    @type_address = TypeAddress.new
  end

  # GET /type_addresses/1/edit
  def edit
  end

  # POST /type_addresses or /type_addresses.json
  def create
    @type_address = TypeAddress.new(type_address_params)

    respond_to do |format|
      if @type_address.save
        format.html { redirect_to type_address_url(@type_address), notice: "Type address was successfully created." }
        format.json { render :show, status: :created, location: @type_address }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @type_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_addresses/1 or /type_addresses/1.json
  def update
    respond_to do |format|
      if @type_address.update(type_address_params)
        format.html { redirect_to type_address_url(@type_address), notice: "Type address was successfully updated." }
        format.json { render :show, status: :ok, location: @type_address }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @type_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_addresses/1 or /type_addresses/1.json
  def destroy
    @type_address.destroy

    respond_to do |format|
      format.html { redirect_to type_addresses_url, notice: "Type address was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_address
      @type_address = TypeAddress.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def type_address_params
      params.require(:type_address).permit(:type_address)
    end
end
