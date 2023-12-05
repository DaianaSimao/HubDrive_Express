class BrandTypesController < ApplicationController
  before_action :set_brand_type, only: %i[ show edit update destroy ]

  # GET /brand_types or /brand_types.json
  def index
    @brand_types = BrandType.all
  end

  # GET /brand_types/1 or /brand_types/1.json
  def show
  end

  # GET /brand_types/new
  def new
    @brand_type = BrandType.new
  end

  # GET /brand_types/1/edit
  def edit
  end

  # POST /brand_types or /brand_types.json
  def create
    @brand_type = BrandType.new(brand_type_params)

    respond_to do |format|
      if @brand_type.save
        format.html { redirect_to brand_type_url(@brand_type), notice: "Brand type was successfully created." }
        format.json { render :show, status: :created, location: @brand_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @brand_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brand_types/1 or /brand_types/1.json
  def update
    respond_to do |format|
      if @brand_type.update(brand_type_params)
        format.html { redirect_to brand_type_url(@brand_type), notice: "Brand type was successfully updated." }
        format.json { render :show, status: :ok, location: @brand_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @brand_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brand_types/1 or /brand_types/1.json
  def destroy
    @brand_type.destroy

    respond_to do |format|
      format.html { redirect_to brand_types_url, notice: "Brand type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand_type
      @brand_type = BrandType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def brand_type_params
      params.require(:brand_type).permit(:brand_name)
    end
end
