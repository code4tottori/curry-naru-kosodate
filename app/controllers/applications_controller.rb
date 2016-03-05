class ApplicationsController < ApplicationController
  before_action :set_application, only: [:show, :update, :destroy]

  # GET /applications
  # GET /applications.json
  def index
    @applications = Application.where(user_id: params[:user_id]) unless params[:user_id].nil?
    @applications ||= Application.all
  end

  # GET /applications/1
  # GET /applications/1.json
  def show
  end

  # POST /applications
  # POST /applications.json
  def create
    @application = Application.new(application_params)

    if @application.save
      @application.status = Application.where(nursery_id: @application.nursery_id, date: @application.date, status: :appointed).count < @application.nursery.capacity ? :appointed : :waiting
      @application.save
      render :show, status: :created, location: @application
    else
      render json: @application.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /applications/1
  # PATCH/PUT /applications/1.json
  def update
    if @application.update(application_params)
      render :show, status: :ok, location: @application
    else
      render json: @application.errors, status: :unprocessable_entity
    end
  end

  # DELETE /applications/1
  # DELETE /applications/1.json
  def destroy
    @application.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application
      @application = Application.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_params
      params.require(:application).permit(:date, :symptom, :comment, :user_id, :nursery_id)
    end
end
