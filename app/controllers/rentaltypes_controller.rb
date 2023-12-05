class RentaltypesController < ApplicationController
  before_action :set_rentaltype, only: %i[ show edit update destroy ]

  # GET /rentaltypes or /rentaltypes.json
  def index
    @rentaltypes = Rentaltype.all
  end

  # GET /rentaltypes/1 or /rentaltypes/1.json
  def show
  end

  # GET /rentaltypes/new
  def new
    @rentaltype = Rentaltype.new
  end

  # GET /rentaltypes/1/edit
  def edit
  end

  # POST /rentaltypes or /rentaltypes.json
  def create
    @rentaltype = Rentaltype.new(rentaltype_params)

    respond_to do |format|
      if @rentaltype.save
        format.html { redirect_to rentaltype_url(@rentaltype), notice: "Rentaltype was successfully created." }
        format.json { render :show, status: :created, location: @rentaltype }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rentaltype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rentaltypes/1 or /rentaltypes/1.json
  def update
    respond_to do |format|
      if @rentaltype.update(rentaltype_params)
        format.html { redirect_to rentaltype_url(@rentaltype), notice: "Rentaltype was successfully updated." }
        format.json { render :show, status: :ok, location: @rentaltype }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rentaltype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rentaltypes/1 or /rentaltypes/1.json
  def destroy
    @rentaltype.destroy

    respond_to do |format|
      format.html { redirect_to rentaltypes_url, notice: "Rentaltype was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rentaltype
      @rentaltype = Rentaltype.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rentaltype_params
      params.require(:rentaltype).permit(:rental_type)
    end
end
