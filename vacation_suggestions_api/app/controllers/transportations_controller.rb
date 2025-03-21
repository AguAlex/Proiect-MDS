class TransportationsController < ApplicationController
  before_action :set_transportation, only: %i[ show update destroy ]

  # GET /transportations
  def index
    @transportations = Transportation.all

    render json: @transportations
  end

  # GET /transportations/1
  def show
    render json: @transportation
  end

  # POST /transportations
  def create
    @transportation = Transportation.new(transportation_params)

    if @transportation.save
      render json: @transportation, status: :created, location: @transportation
    else
      render json: @transportation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /transportations/1
  def update
    if @transportation.update(transportation_params)
      render json: @transportation
    else
      render json: @transportation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /transportations/1
  def destroy
    @transportation.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transportation
      @transportation = Transportation.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def transportation_params
      params.expect(transportation: [ :company_name, :type, :duration, :departure_location, :city_id, :price ])
    end
end
