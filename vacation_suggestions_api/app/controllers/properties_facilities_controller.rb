class PropertiesFacilitiesController < ApplicationController
  before_action :set_properties_facility, only: %i[ show update destroy ]

  # GET /properties_facilities
  def index
    @properties_facilities = PropertiesFacility.all

    render json: @properties_facilities
  end

  # GET /properties_facilities/1
  def show
    render json: @properties_facility
  end

  # POST /properties_facilities
  def create
    @properties_facility = PropertiesFacility.new(properties_facility_params)

    if @properties_facility.save
      render json: @properties_facility, status: :created, location: @properties_facility
    else
      render json: @properties_facility.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /properties_facilities/1
  def update
    if @properties_facility.update(properties_facility_params)
      render json: @properties_facility
    else
      render json: @properties_facility.errors, status: :unprocessable_entity
    end
  end

  # DELETE /properties_facilities/1
  def destroy
    @properties_facility.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_properties_facility
      @properties_facility = PropertiesFacility.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def properties_facility_params
      params.expect(properties_facility: [ :property_id, :facility_id ])
    end
end
