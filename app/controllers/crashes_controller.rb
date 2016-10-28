class CrashesController < ApplicationController
  before_action :set_crash, only: [:show, :edit, :update, :destroy]

  # GET /crashes
  # GET /crashes.json
  def index
    @crashes = Crash.where(crasher_id: current_user.id)
    @requested_crashes = Crash.where(crasher_id: current_user.id, accepted: false)
    @hostings = Crash.where(host_id: current_user.id, accepted: true)
    @pending_hostings = Crash.where(host_id: current_user.id, accepted: false)
    p @crashes
    p @requested_crashes
    p @hostings
    p @pending_hostings
  end

  # GET /crashes/1
  # GET /crashes/1.json
  def show
    @crash = Crash.find(params[:id])
  end

  # GET /crashes/new
  def new
    @crash = Crash.new
  end

  # GET /crashes/1/edit
  def edit
  end

  # POST /crashes
  # POST /crashes.json
  def create
    @crash = Crash.new(crash_params)

    respond_to do |format|
      if @crash.save
        format.html { redirect_to @crash, notice: 'Crash was successfully created.' }
        format.json { render :show, status: :created, location: @crash }
      else
        format.html { render :new }
        format.json { render json: @crash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crashes/1
  # PATCH/PUT /crashes/1.json
  def update
    respond_to do |format|
      if @crash.update(crash_params)
        format.html { redirect_to @crash, notice: 'Crash was successfully updated.' }
        format.json { render :show, status: :ok, location: @crash }
      else
        format.html { render :edit }
        format.json { render json: @crash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crashes/1
  # DELETE /crashes/1.json
  def destroy
    @crash.destroy
    respond_to do |format|
      format.html { redirect_to crashes_url, notice: 'Crash was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crash
      @crash = Crash.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crash_params
      params.require(:crash).permit(:date, :item_for_exchange, :host_id, :crasher_id)
    end
end
