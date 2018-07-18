class CompagniesController < ApplicationController
  before_action :set_compagny, only: [:show, :edit, :update, :destroy]

  # GET /compagnies
  # GET /compagnies.json
  def index
    @compagnies = Compagny.all
  end

  # GET /compagnies/1
  # GET /compagnies/1.json
  def show
  end

  # GET /compagnies/new
  def new
    @compagny = Compagny.new
  end

  # GET /compagnies/1/edit
  def edit
  end

  # POST /compagnies
  # POST /compagnies.json
  def create
    @compagny = Compagny.new(compagny_params)

    respond_to do |format|
      if @compagny.save
        format.html { redirect_to @compagny, notice: 'Compagny was successfully created.' }
        format.json { render :show, status: :created, location: @compagny }
      else
        format.html { render :new }
        format.json { render json: @compagny.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compagnies/1
  # PATCH/PUT /compagnies/1.json
  def update
    respond_to do |format|
      if @compagny.update(compagny_params)
        format.html { redirect_to @compagny, notice: 'Compagny was successfully updated.' }
        format.json { render :show, status: :ok, location: @compagny }
      else
        format.html { render :edit }
        format.json { render json: @compagny.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compagnies/1
  # DELETE /compagnies/1.json
  def destroy
    @compagny.destroy
    respond_to do |format|
      format.html { redirect_to compagnies_url, notice: 'Compagny was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compagny
      @compagny = Compagny.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compagny_params
      params.fetch(:compagny, {})
    end
end
