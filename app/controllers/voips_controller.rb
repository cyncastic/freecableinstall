class VoipsController < ApplicationController
  skip_before_action :authorize, only: [:new, :create]

  before_action :set_voip, only: [:show, :edit, :update, :destroy]

  # GET /voips
  # GET /voips.json
  def index
    @voips = Voip.all
  end

  # GET /voips/1
  # GET /voips/1.json
  def show
  end

  # GET /voips/new
  def new
    @voip = Voip.new
  end

  # GET /voips/1/edit
  def edit
  end

  # POST /voips
  # POST /voips.json
  def create
    @voip = Voip.new(voip_params)

    respond_to do |format|
      if @voip.save
        format.html { redirect_to thankyou_path from: 'voip' }
        format.json { render :show, status: :created, location: @voip }
      else
        format.html { render :new }
        format.json { render json: @voip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voips/1
  # PATCH/PUT /voips/1.json
  def update
    respond_to do |format|
      if @voip.update(voip_params)
        format.html { redirect_to @voip, notice: 'Voip was successfully updated.' }
        format.json { render :show, status: :ok, location: @voip }
      else
        format.html { render :edit }
        format.json { render json: @voip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voips/1
  # DELETE /voips/1.json
  def destroy
    @voip.destroy
    respond_to do |format|
      format.html { redirect_to voips_url, notice: 'Voip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voip
      @voip = Voip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voip_params
      params.require(:voip).permit(:phone_choice,
                                   :first_name,
                                   :last_name,
                                   :email,
                                   :phone,
                                   :business_name,
                                   :business_phone,
                                   :quantity_vvx301,
                                   :quantity_vvx401,
                                   :street_address_1,
                                   :street_address_2,
                                   :city,
                                   :state,
                                   :zip,
                                   :best_time,
                                   :best_way,
                                   :also_interested,
                                   :referrer_id
                                   )
    end
end
