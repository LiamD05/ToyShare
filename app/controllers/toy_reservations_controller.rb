class ToyReservationsController < ApplicationController
  before_action :set_toy_reservation, only: %i[ show edit update destroy ]

  # GET /toy_reservations or /toy_reservations.json
  def index
    @toy_reservations = ToyReservation.all
  end

  # GET /toy_reservations/1 or /toy_reservations/1.json
  def show
  end

  # GET /toy_reservations/new
  def new
    @toy_reservation = ToyReservation.new
  end

  # GET /toy_reservations/1/edit
  def edit
  end

  # POST /toy_reservations or /toy_reservations.json
  def create
    @toy_reservation = ToyReservation.new(toy_reservation_params)

    respond_to do |format|
      if @toy_reservation.save
        format.html { redirect_to toy_reservation_url(@toy_reservation), notice: "Toy reservation was successfully created." }
        format.json { render :show, status: :created, location: @toy_reservation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @toy_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toy_reservations/1 or /toy_reservations/1.json
  def update
    respond_to do |format|
      if @toy_reservation.update(toy_reservation_params)
        format.html { redirect_to toy_reservation_url(@toy_reservation), notice: "Toy reservation was successfully updated." }
        format.json { render :show, status: :ok, location: @toy_reservation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @toy_reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toy_reservations/1 or /toy_reservations/1.json
  def destroy
    @toy_reservation.destroy

    respond_to do |format|
      format.html { redirect_to toy_reservations_url, notice: "Toy reservation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toy_reservation
      @toy_reservation = ToyReservation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def toy_reservation_params
      params.require(:toy_reservation).permit(:user_id, :toy_type_id, :fulfilled, :start_date)
    end
end
