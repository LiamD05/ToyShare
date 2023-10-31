class ToyStatusesController < ApplicationController
  before_action :set_toy_status, only: %i[ show edit update destroy ]

  # GET /toy_statuses or /toy_statuses.json
  def index
    @toy_statuses = ToyStatus.all
  end

  # GET /toy_statuses/1 or /toy_statuses/1.json
  def show
  end

  # GET /toy_statuses/new
  def new
    @toy_status = ToyStatus.new
  end

  # GET /toy_statuses/1/edit
  def edit
  end

  # POST /toy_statuses or /toy_statuses.json
  def create
    @toy_status = ToyStatus.new(toy_status_params)

    respond_to do |format|
      if @toy_status.save
        format.html { redirect_to toy_status_url(@toy_status), notice: "Toy status was successfully created." }
        format.json { render :show, status: :created, location: @toy_status }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @toy_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toy_statuses/1 or /toy_statuses/1.json
  def update
    respond_to do |format|
      if @toy_status.update(toy_status_params)
        format.html { redirect_to toy_status_url(@toy_status), notice: "Toy status was successfully updated." }
        format.json { render :show, status: :ok, location: @toy_status }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @toy_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toy_statuses/1 or /toy_statuses/1.json
  def destroy
    @toy_status.destroy

    respond_to do |format|
      format.html { redirect_to toy_statuses_url, notice: "Toy status was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toy_status
      @toy_status = ToyStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def toy_status_params
      params.require(:toy_status).permit(:name)
    end
end
