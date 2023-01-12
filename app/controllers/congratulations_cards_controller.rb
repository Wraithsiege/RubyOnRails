class CongratulationsCardsController < ApplicationController
  before_action :set_congratulations_card, only: %i[ show ]
  before_action :admin_user,     only: %i[ edit update destroy ]

  # GET /congratulations_cards or /congratulations_cards.json
  def index
    @congratulations_cards = CongratulationsCard.all
  end

  # GET /congratulations_cards/1 or /congratulations_cards/1.json
  def show
  end

  # GET /congratulations_cards/new
  def new
    @congratulations_card = CongratulationsCard.new
  end

  # GET /congratulations_cards/1/edit
  def edit
  end

  # POST /congratulations_cards or /congratulations_cards.json
  def create
    @congratulations_card = CongratulationsCard.new(congratulations_card_params)

    respond_to do |format|
      if @congratulations_card.save
        format.html { redirect_to congratulations_card_url(@congratulations_card), notice: "Congratulations card was successfully created." }
        format.json { render :show, status: :created, location: @congratulations_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @congratulations_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /congratulations_cards/1 or /congratulations_cards/1.json
  def update
    respond_to do |format|
      if @congratulations_card.update(congratulations_card_params)
        format.html { redirect_to congratulations_card_url(@congratulations_card), notice: "Congratulations card was successfully updated." }
        format.json { render :show, status: :ok, location: @congratulations_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @congratulations_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /congratulations_cards/1 or /congratulations_cards/1.json
  def destroy
    @congratulations_card.destroy

    respond_to do |format|
      format.html { redirect_to congratulations_cards_url, notice: "Congratulations card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_congratulations_card
      @congratulations_card = CongratulationsCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def congratulations_card_params
      params.require(:congratulations_card).permit(:type, :price)
    end

    def admin_user
      redirect_to(root_url, status: :see_other) unless current_user.admin?
    end
end
