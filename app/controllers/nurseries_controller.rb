class NurseriesController < ApplicationController
  before_action :set_nurseries, only: [:show]

  # GET /nurseries
  # GET /nurseries.json
  def index
    @nurseries = Nursery.all
    unless params[:date].nil?
      @nurseries.each { |n| n.count_applications(params[:date]) }
    end
  end

  # GET /nurseries/1
  # GET /nurseries/1.json
  def show
    @nurseries.count_applications(params[:date]) unless params[:date].nil?
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
