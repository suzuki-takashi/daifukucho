class Zt010sController < ApplicationController
  before_action :set_zt010, only: [:show, :edit, :update, :destroy]

  # GET /zt010s
  # GET /zt010s.json
  def index
    @zt010s = Zt010.all
  end

  # GET /zt010s/1
  # GET /zt010s/1.json
  def show
  end

  # GET /zt010s/new
  def new
    @zt010 = Zt010.new
  end

  # GET /zt010s/1/edit
  def edit
  end

  # POST /zt010s
  # POST /zt010s.json
  def create
    @zt010 = Zt010.new(zt010_params)

    respond_to do |format|
      if @zt010.save
        format.html { redirect_to @zt010, notice: 'Zt010 was successfully created.' }
        format.json { render :show, status: :created, location: @zt010 }
      else
        format.html { render :new }
        format.json { render json: @zt010.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zt010s/1
  # PATCH/PUT /zt010s/1.json
  def update
    respond_to do |format|
      if @zt010.update(zt010_params)
        format.html { redirect_to @zt010, notice: 'Zt010 was successfully updated.' }
        format.json { render :show, status: :ok, location: @zt010 }
      else
        format.html { render :edit }
        format.json { render json: @zt010.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zt010s/1
  # DELETE /zt010s/1.json
  def destroy
    @zt010.destroy
    respond_to do |format|
      format.html { redirect_to zt010s_url, notice: 'Zt010 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zt010
      @zt010 = Zt010.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zt010_params
      params.require(:zt010).permit(:IDVARIANT, :TXNAME, :TXTYPE, :TXVALUE, :TXREMARKS)
    end
end
