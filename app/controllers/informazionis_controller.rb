class InformazionisController < ApplicationController
  before_action :set_informazioni, only: %i[ show edit update destroy ]

  # GET /informazionis or /informazionis.json
  def index
    @informazionis = Informazioni.all
  end

  # GET /informazionis/1 or /informazionis/1.json
  def show
  end

  # GET /informazionis/new
  def new
    @informazioni = Informazioni.new
  end

  # GET /informazionis/1/edit
  def edit
  end

  # POST /informazionis or /informazionis.json
  def create
    @informazioni = Informazioni.new(informazioni_params)

    respond_to do |format|
      if @informazioni.save
        format.html { redirect_to @informazioni, notice: "Informazioni was successfully created." }
        format.json { render :show, status: :created, location: @informazioni }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @informazioni.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /informazionis/1 or /informazionis/1.json
  def update
    respond_to do |format|
      if @informazioni.update(informazioni_params)
        format.html { redirect_to @informazioni, notice: "Informazioni was successfully updated." }
        format.json { render :show, status: :ok, location: @informazioni }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @informazioni.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /informazionis/1 or /informazionis/1.json
  def destroy
    @informazioni.destroy
    respond_to do |format|
      format.html { redirect_to informazionis_url, notice: "Informazioni was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_informazioni
      @informazioni = Informazioni.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def informazioni_params
      params.require(:informazioni).permit(:nome, :cognome, :email, :telefono)
    end
end
