class Zt020sController < ApplicationController
  before_action :set_zt020, only: [:show, :edit, :update, :destroy]

  # GET /zt020s
  # GET /zt020s.json
  def index
    @zt020s = Zt020.all
  end

  # GET /zt020s/1
  # GET /zt020s/1.json
  def show
  end

  # GET /zt020s/new
  def new
    @zt020 = Zt020.new
  end

  # GET /zt020s/1/edit
  def edit
  end

  # POST /zt020s
  # POST /zt020s.json
  def create
    @zt020 = Zt020.new(zt020_params)

    respond_to do |format|
      if @zt020.save
        format.html { redirect_to @zt020, notice: 'Zt020 was successfully created.' }
        format.json { render :show, status: :created, location: @zt020 }
      else
        format.html { render :new }
        format.json { render json: @zt020.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zt020s/1
  # PATCH/PUT /zt020s/1.json
  def update
    respond_to do |format|
      if @zt020.update(zt020_params)
        format.html { redirect_to @zt020, notice: 'Zt020 was successfully updated.' }
        format.json { render :show, status: :ok, location: @zt020 }
      else
        format.html { render :edit }
        format.json { render json: @zt020.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zt020s/1
  # DELETE /zt020s/1.json
  def destroy
    @zt020.destroy
    respond_to do |format|
      format.html { redirect_to zt020s_url, notice: 'Zt020 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zt020
      @zt020 = Zt020.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zt020_params
      params.require(:zt020).permit(:IDUSER, :TXNAME, :TXPASSWORD)
    end
end
