class PerfumesController < ApplicationController
  before_action :set_perfume, only: [:my_show, :show, :edit, :update, :destroy]

  # GET /perfumes
  # GET /perfumes.json
  def index
    @perfumes = Perfume.all
  end

  def my_show
  end
  # GET /perfumes/1
  # GET /perfumes/1.json
  def show
  end

  # GET /perfumes/new
  def new
    @perfume    = Perfume.new
    @tipos      = Tipo.all.collect{|p| [p.descripcion, p.id]}
    @sexos      = Sexo.all.collect{|p| [p.descripcion, p.id]}
    @mililitros = Mililitro.all.collect{|p| [p.descripcion, p.id]}

  end

  # GET /perfumes/1/edit
  def edit
  end

  # POST /perfumes
  # POST /perfumes.json
  def create
    @perfume = Perfume.new(perfume_params)

    respond_to do |format|
      if @perfume.save
        format.html { redirect_to @perfume, notice: 'Perfume was successfully created.' }
        format.json { render action: 'show', status: :created, location: @perfume }
      else
        format.html { render action: 'new' }
        format.json { render json: @perfume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perfumes/1
  # PATCH/PUT /perfumes/1.json
  def update
    respond_to do |format|
      if @perfume.update(perfume_params)
        format.html { redirect_to @perfume, notice: 'Perfume was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @perfume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perfumes/1
  # DELETE /perfumes/1.json
  def destroy
    @perfume.destroy
    respond_to do |format|
      format.html { redirect_to perfumes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perfume
      @perfume = Perfume.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perfume_params
      params.require(:perfume).permit(:nombre, :tipo_id, :sexo_id, :precio, :mililitro_id, :imagen_url)
    end
end
