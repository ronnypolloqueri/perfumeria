class MarcasController < ApplicationController
  before_action :set_marca, only: [:linea, :show, :edit, :update, :destroy]
  before_action :authorize
  skip_before_action :authorize, only: [:linea_masculina, :linea_femenina]

  # GET /marcas
  # GET /marcas.json
  def index
    @marcas = Marca.all.order(:descripcion)
  end

  # GET /marcas/1
  # GET /marcas/1.json
  def show
  end

  def linea_masculina
    @sexo = 1
    @marcas   = Marca.all.order(:descripcion)
    @marca    = Marca.find(params[:id])
    @perfumes = Perfume.where('sexo_id = 1 and marca_id = ?', params[:id])
  end

  def linea_femenina
    @sexo = 2
    @marcas   = Marca.all.order(:descripcion)
    @marca    = Marca.find(params[:id])
    @perfumes = Perfume.where('sexo_id = 2 and marca_id = ?', params[:id])
  end

  # GET /marcas/new
  def new
    @marca = Marca.new
  end

  # GET /marcas/1/edit
  def edit
  end

  # POST /marcas
  # POST /marcas.json
  def create
    @marca = Marca.new(marca_params)

    respond_to do |format|
      if @marca.save
        format.html { redirect_to @marca, notice: 'Marca was successfully created.' }
        format.json { render action: 'show', status: :created, location: @marca }
      else
        format.html { render action: 'new' }
        format.json { render json: @marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marcas/1
  # PATCH/PUT /marcas/1.json
  def update
    respond_to do |format|
      if @marca.update(marca_params)
        format.html { redirect_to @marca, notice: 'Marca was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @marca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marcas/1
  # DELETE /marcas/1.json
  def destroy
    @marca.destroy
    respond_to do |format|
      format.html { redirect_to marcas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marca
      @marca = Marca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marca_params
      params.require(:marca).permit(:descripcion)
    end
end
