class PaymentCardsController < ApplicationController
  before_action :set_payment_card, only: %i[ show edit update destroy ]

  # GET /payment_cards or /payment_cards.json
  def index
    @payment_cards = PaymentCard.all
  end

  # GET /payment_cards/1 or /payment_cards/1.json
  def show
  end

  # GET /payment_cards/new
  def new
    @payment_card = PaymentCard.new
  end

  # GET /payment_cards/1/edit
  def edit
  end

  # POST /payment_cards or /payment_cards.json
  def create
    @payment_card = PaymentCard.new(payment_card_params)

    respond_to do |format|
      if @payment_card.save
        format.html { redirect_to payment_card_url(@payment_card), notice: "Payment card was successfully created." }
        format.json { render :show, status: :created, location: @payment_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @payment_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_cards/1 or /payment_cards/1.json
  def update
    respond_to do |format|
      if @payment_card.update(payment_card_params)
        format.html { redirect_to payment_card_url(@payment_card), notice: "Payment card was successfully updated." }
        format.json { render :show, status: :ok, location: @payment_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @payment_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_cards/1 or /payment_cards/1.json
  def destroy
    @payment_card.destroy

    respond_to do |format|
      format.html { redirect_to payment_cards_url, notice: "Payment card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_card
      @payment_card = PaymentCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def payment_card_params
      params.require(:payment_card).permit(:card_brand, :card_network)
    end
end
