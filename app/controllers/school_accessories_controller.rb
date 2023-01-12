class SchoolAccessoriesController < ApplicationController
  before_action :set_school_accessory, only: %i[ show edit update destroy ]

  # GET /school_accessories or /school_accessories.json
  def index
    @school_accessories = SchoolAccessory.all
  end

  # GET /school_accessories/1 or /school_accessories/1.json
  def show
  end

  # GET /school_accessories/new
  def new
    @school_accessory = SchoolAccessory.new
  end

  # GET /school_accessories/1/edit
  def edit
  end

  # POST /school_accessories or /school_accessories.json
  def create
    @school_accessory = SchoolAccessory.new(school_accessory_params)

    respond_to do |format|
      if @school_accessory.save
        format.html { redirect_to school_accessory_url(@school_accessory), notice: "School accessory was successfully created." }
        format.json { render :show, status: :created, location: @school_accessory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @school_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_accessories/1 or /school_accessories/1.json
  def update
    respond_to do |format|
      if @school_accessory.update(school_accessory_params)
        format.html { redirect_to school_accessory_url(@school_accessory), notice: "School accessory was successfully updated." }
        format.json { render :show, status: :ok, location: @school_accessory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @school_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_accessories/1 or /school_accessories/1.json
  def destroy
    @school_accessory.destroy

    respond_to do |format|
      format.html { redirect_to school_accessories_url, notice: "School accessory was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_accessory
      @school_accessory = SchoolAccessory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def school_accessory_params
      params.require(:school_accessory).permit(:manufacturer, :type, :color, :price)
    end
end
