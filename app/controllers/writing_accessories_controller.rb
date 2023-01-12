class WritingAccessoriesController < ApplicationController
  before_action :set_writing_accessory, only: %i[ show edit update destroy ]

  # GET /writing_accessories or /writing_accessories.json
  def index
    @writing_accessories = WritingAccessory.all
  end

  # GET /writing_accessories/1 or /writing_accessories/1.json
  def show
  end

  # GET /writing_accessories/new
  def new
    @writing_accessory = WritingAccessory.new
  end

  # GET /writing_accessories/1/edit
  def edit
  end

  # POST /writing_accessories or /writing_accessories.json
  def create
    @writing_accessory = WritingAccessory.new(writing_accessory_params)

    respond_to do |format|
      if @writing_accessory.save
        format.html { redirect_to writing_accessory_url(@writing_accessory), notice: "Writing accessory was successfully created." }
        format.json { render :show, status: :created, location: @writing_accessory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @writing_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /writing_accessories/1 or /writing_accessories/1.json
  def update
    respond_to do |format|
      if @writing_accessory.update(writing_accessory_params)
        format.html { redirect_to writing_accessory_url(@writing_accessory), notice: "Writing accessory was successfully updated." }
        format.json { render :show, status: :ok, location: @writing_accessory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @writing_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /writing_accessories/1 or /writing_accessories/1.json
  def destroy
    @writing_accessory.destroy

    respond_to do |format|
      format.html { redirect_to writing_accessories_url, notice: "Writing accessory was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_writing_accessory
      @writing_accessory = WritingAccessory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def writing_accessory_params
      params.require(:writing_accessory).permit(:manufacturer, :type, :color, :price)
    end
end
