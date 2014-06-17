class AdminprincipalsController < ApplicationController
  before_action :set_adminprincipal, only: [:show, :edit, :update, :destroy]

  # GET /adminprincipals
  # GET /adminprincipals.json
  def index
    @adminprincipals = Adminprincipal.all
  end

  # GET /adminprincipals/1
  # GET /adminprincipals/1.json
  def show
  end

  # GET /adminprincipals/new
  def new
    @adminprincipal = Adminprincipal.new
  end

  # GET /adminprincipals/1/edit
  def edit
  end

  # POST /adminprincipals
  # POST /adminprincipals.json
  def create
    @adminprincipal = Adminprincipal.new(adminprincipal_params)

    respond_to do |format|
      if @adminprincipal.save
        format.html { redirect_to @adminprincipal, notice: 'Adminprincipal was successfully created.' }
        format.json { render :show, status: :created, location: @adminprincipal }
      else
        format.html { render :new }
        format.json { render json: @adminprincipal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminprincipals/1
  # PATCH/PUT /adminprincipals/1.json
  def update
    respond_to do |format|
      if @adminprincipal.update(adminprincipal_params)
        format.html { redirect_to @adminprincipal, notice: 'Adminprincipal was successfully updated.' }
        format.json { render :show, status: :ok, location: @adminprincipal }
      else
        format.html { render :edit }
        format.json { render json: @adminprincipal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminprincipals/1
  # DELETE /adminprincipals/1.json
  def destroy
    @adminprincipal.destroy
    respond_to do |format|
      format.html { redirect_to adminprincipals_url, notice: 'Adminprincipal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminprincipal
      @adminprincipal = Adminprincipal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adminprincipal_params
      params[:adminprincipal]
    end
end
