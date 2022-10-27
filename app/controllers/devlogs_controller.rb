class DevlogsController < ApplicationController
  before_action :set_devlog, only: %i[ show edit update destroy ]

  # GET /devlogs or /devlogs.json
  def index
    @devlogs = Devlog.all
  end

  # GET /devlogs/1 or /devlogs/1.json
  def show
  end

  # GET /devlogs/new
  def new
    @devlog = Devlog.new
  end

  # GET /devlogs/1/edit
  def edit
  end

  # POST /devlogs or /devlogs.json
  def create
    @devlog = Devlog.new(devlog_params)

    respond_to do |format|
      if @devlog.save
        format.html { redirect_to devlog_url(@devlog), notice: "Devlog was successfully created." }
        format.json { render :show, status: :created, location: @devlog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @devlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devlogs/1 or /devlogs/1.json
  def update
    respond_to do |format|
      if @devlog.update(devlog_params)
        format.html { redirect_to devlog_url(@devlog), notice: "Devlog was successfully updated." }
        format.json { render :show, status: :ok, location: @devlog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @devlog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devlogs/1 or /devlogs/1.json
  def destroy
    @devlog.destroy

    respond_to do |format|
      format.html { redirect_to devlogs_url, notice: "Devlog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_devlog
      @devlog = Devlog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def devlog_params
      params.require(:devlog).permit(:devlogs, :deviceid, :data)
    end
end
