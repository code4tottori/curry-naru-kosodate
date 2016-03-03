class NurseriesController < ApplicationController
  before_action :set_nurseries, only: [:show, :edit, :update, :destroy]

  # GET /nurseries
  # GET /nurseries.json
  def index
    @nurseries = Nursery.all
  end

  # GET /nurseries/1
  # GET /nurseries/1.json
  def show
  end

  # GET /nurseries/new
  def new
    @nurseries = Nursery.new
  end

  # GET /nurseries/1/edit
  def edit
  end

  # POST /nurseries
  # POST /nurseries.json
  def create
    @nurseries = Nursery.new(nurseries_params)

    respond_to do |format|
      if @nurseries.save
        format.html { redirect_to @nurseries, notice: 'Nursery was successfully created.' }
        format.json { render :show, status: :created, location: @nurseries }
      else
        format.html { render :new }
        format.json { render json: @nurseries.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nurseries/1
  # PATCH/PUT /nurseries/1.json
  def update
    respond_to do |format|
      if @nurseries.update(nurseries_params)
        format.html { redirect_to @nurseries, notice: 'Nursery was successfully updated.' }
        format.json { render :show, status: :ok, location: @nurseries }
      else
        format.html { render :edit }
        format.json { render json: @nurseries.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nurseries/1
  # DELETE /nurseries/1.json
  def destroy
    @nurseries.destroy
    respond_to do |format|
      format.html { redirect_to nurseries_url, notice: 'Nursery was successfully destroyed.' }
      format.json { head :no_content }
    end
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
