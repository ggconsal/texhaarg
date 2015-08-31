class TextoVinetaController < ApplicationController
  before_action :set_texto_vinetum, only: [:show, :edit, :update, :destroy]

  # GET /texto_vineta
  # GET /texto_vineta.json
  def index
    @texto_vineta = TextoVinetum.all
  end

  # GET /texto_vineta/1
  # GET /texto_vineta/1.json
  def show
  end

  # GET /texto_vineta/new
  def new
    @texto_vinetum = TextoVinetum.new
  end

  # GET /texto_vineta/1/edit
  def edit
  end

  # POST /texto_vineta
  # POST /texto_vineta.json
  def create
    @texto_vinetum = TextoVinetum.new(texto_vinetum_params)

    respond_to do |format|
      if @texto_vinetum.save
        format.html { redirect_to @texto_vinetum, notice: 'Texto vinetum was successfully created.' }
        format.json { render :show, status: :created, location: @texto_vinetum }
      else
        format.html { render :new }
        format.json { render json: @texto_vinetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /texto_vineta/1
  # PATCH/PUT /texto_vineta/1.json
  def update
    respond_to do |format|
      if @texto_vinetum.update(texto_vinetum_params)
        format.html { redirect_to @texto_vinetum, notice: 'Texto vinetum was successfully updated.' }
        format.json { render :show, status: :ok, location: @texto_vinetum }
      else
        format.html { render :edit }
        format.json { render json: @texto_vinetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /texto_vineta/1
  # DELETE /texto_vineta/1.json
  def destroy
    @texto_vinetum.destroy
    respond_to do |format|
      format.html { redirect_to texto_vineta_url, notice: 'Texto vinetum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_texto_vinetum
      @texto_vinetum = TextoVinetum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def texto_vinetum_params
      params.require(:texto_vinetum).permit(:tve_texto, :texto_id)
    end
end
