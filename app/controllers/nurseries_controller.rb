class NurseriesController < ApplicationController
  before_action :set_nurseries, only: [:show, :update, :destroy]

  # GET /nurseries
  # GET /nurseries.json
  def index
    @nurseries = Nursery.all
  end

  # GET /nurseries/1
  # GET /nurseries/1.json
  def show
  end

  # POST /nurseries
  # POST /nurseries.json
  def create
    @nurseries = Nursery.new(nurseries_params)

    if @nurseries.save
      render :show, status: :created, location: @nurseries
    else
      render json: @nurseries.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nurseries/1
  # PATCH/PUT /nurseries/1.json
  def update
    if @nurseries.update(nurseries_params)
      render :show, status: :ok, location: @nurseries
    else
      render json: @nurseries.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nurseries/1
  # DELETE /nurseries/1.json
  def destroy
    @nurseries.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nurseries
      @nurseries = Nursery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nurseries_params
      params.require(:nurseries).permit(:name, :address, :phone, :business_hours, :capacity, :condition, :fee, :things, :medical_system, :comment)
    end
end
