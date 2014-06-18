class OperariaController < ApplicationController
  before_action :set_operarium, only: [:show, :edit, :update, :destroy]

  # GET /operaria
  # GET /operaria.json
  def index
    @operaria = Operarium.all
  end

  # GET /operaria/1
  # GET /operaria/1.json
  def show
  end

  # GET /operaria/new
  def new
    @operarium = Operarium.new
  end

  # GET /operaria/1/edit
  def edit
  end

  # POST /operaria
  # POST /operaria.json
  def create
    @operarium = Operarium.new(operarium_params)

    respond_to do |format|
      if @operarium.save
        format.html { redirect_to @operarium, notice: 'Operarium was successfully created.' }
        format.json { render :show, status: :created, location: @operarium }
      else
        format.html { render :new }
        format.json { render json: @operarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operaria/1
  # PATCH/PUT /operaria/1.json
  def update
    respond_to do |format|
      if @operarium.update(operarium_params)
        format.html { redirect_to @operarium, notice: 'Operarium was successfully updated.' }
        format.json { render :show, status: :ok, location: @operarium }
      else
        format.html { render :edit }
        format.json { render json: @operarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operaria/1
  # DELETE /operaria/1.json
  def destroy
    @operarium.destroy
    respond_to do |format|
      format.html { redirect_to operaria_url, notice: 'Operarium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operarium
      @operarium = Operarium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operarium_params
      params.require(:operarium).permit(:Tipodocumentos_id, :Numerodocumento, :Nombres, :Apellidos, :Genero, :Direccion, :Correo, :Telefono, :Celular, :DirectorArea, :instructors_id, :Calificacion, :Inicial, :Fecha, :Inicio, :Fecha, :Final)
    end
end
