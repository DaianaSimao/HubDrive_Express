class TypeDocumentsController < ApplicationController
  before_action :set_type_document, only: %i[ show edit update destroy ]

  # GET /type_documents or /type_documents.json
  def index
    @type_documents = TypeDocument.all
  end

  # GET /type_documents/1 or /type_documents/1.json
  def show
  end

  # GET /type_documents/new
  def new
    @type_document = TypeDocument.new
  end

  # GET /type_documents/1/edit
  def edit
  end

  # POST /type_documents or /type_documents.json
  def create
    @type_document = TypeDocument.new(type_document_params)

    respond_to do |format|
      if @type_document.save
        format.html { redirect_to type_document_url(@type_document), notice: "Type document was successfully created." }
        format.json { render :show, status: :created, location: @type_document }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @type_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_documents/1 or /type_documents/1.json
  def update
    respond_to do |format|
      if @type_document.update(type_document_params)
        format.html { redirect_to type_document_url(@type_document), notice: "Type document was successfully updated." }
        format.json { render :show, status: :ok, location: @type_document }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @type_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_documents/1 or /type_documents/1.json
  def destroy
    @type_document.destroy

    respond_to do |format|
      format.html { redirect_to type_documents_url, notice: "Type document was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_document
      @type_document = TypeDocument.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def type_document_params
      params.require(:type_document).permit(:type_document)
    end
end
