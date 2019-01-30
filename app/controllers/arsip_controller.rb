class ArsipController < ApplicationController
  before_action :set_arsip, only: [:show, :edit, :update, :destroy]

  # GET /arsip
  # GET /arsip.json
  def index
    @arsip = Arsip.all
  end

  # GET /arsip/1
  # GET /arsip/1.json
  def show
  end

  # GET /arsip/new
  def new
    @arsip = Arsip.new
  end

  # GET /arsip/1/edit
  def edit
  end

  # POST /arsip
  # POST /arsip.json
  def create
    @arsip = Arsip.new(arsip_params)

    respond_to do |format|
      if @arsip.save
        format.html { redirect_to @arsip, notice: 'Arsip was successfully created.' }
        format.json { render :show, status: :created, location: @arsip }
      else
        format.html { render :new }
        format.json { render json: @arsip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arsip/1
  # PATCH/PUT /arsip/1.json
  def update
    respond_to do |format|
      if @arsip.update(arsip_params)
        format.html { redirect_to @arsip, notice: 'Arsip was successfully updated.' }
        format.json { render :show, status: :ok, location: @arsip }
      else
        format.html { render :edit }
        format.json { render json: @arsip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arsip/1
  # DELETE /arsip/1.json
  def destroy
    @arsip.destroy
    respond_to do |format|
      format.html { redirect_to arsip_index_url, notice: 'Arsip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arsip
      @arsip = Arsip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arsip_params
      params.require(:arsip).permit(:judul, :keterangan)
    end
end
