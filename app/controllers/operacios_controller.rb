class OperaciosController < ApplicationController
  before_action :set_operacio, only: [:show, :edit, :update, :destroy]

  # GET /operacios
  # GET /operacios.json
  def index
    @operacios = Operacio.all
  end

  # GET /operacios/1
  # GET /operacios/1.json
  def show
  end

  # GET /operacios/new
  def new
    @operacio = Operacio.new
  end

  # GET /operacios/1/edit
  def edit
  end

  # POST /operacios
  # POST /operacios.json
  def create
    @operacio = Operacio.new(operacio_params)

    respond_to do |format|
      if @operacio.save
        format.html { redirect_to @operacio, notice: 'Operacio was successfully created.' }
        format.json { render :show, status: :created, location: @operacio }
      else
        format.html { render :new }
        format.json { render json: @operacio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operacios/1
  # PATCH/PUT /operacios/1.json
  def update
    respond_to do |format|
      if @operacio.update(operacio_params)
        format.html { redirect_to @operacio, notice: 'Operacio was successfully updated.' }
        format.json { render :show, status: :ok, location: @operacio }
      else
        format.html { render :edit }
        format.json { render json: @operacio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operacios/1
  # DELETE /operacios/1.json
  def destroy
    @operacio.destroy
    respond_to do |format|
      format.html { redirect_to operacios_url, notice: 'Operacio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operacio
      @operacio = Operacio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operacio_params
      params.require(:operacio).permit(:area, :cantidadProceso, :maquinas, :tiposTelas, :TiempoEstandar, :instructorCargo, :insumos, :Referencia, :Descripcion)
    end
end
