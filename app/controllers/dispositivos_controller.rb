class DispositivosController < ApplicationController
  before_action :set_dispositivo, only: %i[ show edit update destroy ]

  # GET /dispositivos or /dispositivos.json
  def index
    @dispositivos = Dispositivo.all
  end

  # GET /dispositivos/1 or /dispositivos/1.json
  def show
  end

  # GET /dispositivos/new
  def new
    @dispositivo = Dispositivo.new
  end

  # GET /dispositivos/1/edit
  def edit
  end

  # POST /dispositivos or /dispositivos.json
  def create
    @dispositivo = Dispositivo.new(dispositivo_params)

    respond_to do |format|
      if @dispositivo.save
        format.html { redirect_to dispositivo_url(@dispositivo), notice: "Dispositivo was successfully created." }
        format.json { render :show, status: :created, location: @dispositivo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dispositivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dispositivos/1 or /dispositivos/1.json
  def update
    respond_to do |format|
      if @dispositivo.update(dispositivo_params)
        format.html { redirect_to dispositivo_url(@dispositivo), notice: "Dispositivo was successfully updated." }
        format.json { render :show, status: :ok, location: @dispositivo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dispositivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dispositivos/1 or /dispositivos/1.json
  def destroy
    @dispositivo.destroy

    respond_to do |format|
      format.html { redirect_to dispositivos_url, notice: "Dispositivo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dispositivo
      @dispositivo = Dispositivo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dispositivo_params
      params.require(:dispositivo).permit(:devices, :identificador, :mail, :prioridad)
    end
end
