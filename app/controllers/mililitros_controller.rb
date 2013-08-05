class MililitrosController < ApplicationController
  before_action :set_mililitro, only: [:show, :edit, :update, :destroy]
  before_action :authorize
  # GET /mililitros
  # GET /mililitros.json
  def index
    @mililitros = Mililitro.all
  end

  # GET /mililitros/1
  # GET /mililitros/1.json
  def show
  end

  # GET /mililitros/new
  def new
    @mililitro = Mililitro.new
  end

  # GET /mililitros/1/edit
  def edit
  end

  # POST /mililitros
  # POST /mililitros.json
  def create
    @mililitro = Mililitro.new(mililitro_params)

    respond_to do |format|
      if @mililitro.save
        format.html { redirect_to @mililitro, notice: 'Mililitro was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mililitro }
      else
        format.html { render action: 'new' }
        format.json { render json: @mililitro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mililitros/1
  # PATCH/PUT /mililitros/1.json
  def update
    respond_to do |format|
      if @mililitro.update(mililitro_params)
        format.html { redirect_to @mililitro, notice: 'Mililitro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mililitro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mililitros/1
  # DELETE /mililitros/1.json
  def destroy
    @mililitro.destroy
    respond_to do |format|
      format.html { redirect_to mililitros_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mililitro
      @mililitro = Mililitro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mililitro_params
      params.require(:mililitro).permit(:descripcion)
    end
end
