class VacationsController < ApplicationController
  

  # GET /vacations - Afiseaza toate vacantele
  def index
    @vacations = Vacation.all
    render json: @vacations
  end

  # GET /vacations/:id - Afiseaza vacanta dupa ID
  def show
    @vacation = Vacation.find(params[:id])
    render json: @vacation
  end

  # POST /vacations - Creaza o vacanta
  def create
    @vacation = Vacation.new(vacation_params)

    if @vacation.save
      render json: @vacation, status: :created
    else
      render json: @vacation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vacations/:id - Actualizeaza o vacanta
  def update
    @vacation = Vacation.find(params[:id])

    if @vacation.update(vacation_params)
      render json: @vacation
    else
      render json: @vacation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vacations/:id - Sterge o vacanta
  def destroy
    @vacation = Vacation.find(params[:id])
    @vacation.destroy
    head :no_content
  end

  private

  # Permite doar câmpurile ce pot fi actualizate din API
  def vacation_params
    params.require(:vacation).permit(:name, :description, :location, :start_date, :end_date)
  end
end
