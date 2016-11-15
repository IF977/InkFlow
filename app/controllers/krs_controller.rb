class KrsController < ApplicationController
  before_action :set_team
  before_action :set_okr
  before_action :set_kr, only: [:show, :edit, :update, :destroy]

  # GET /krs
  # GET /krs.json
  def index
    @krs = Kr.all
  end

  # GET /krs/1
  # GET /krs/1.json
  def show
  end

  # GET /krs/new
  def new
    @team = Team.find(params[:team_id])
    @okr = Okr.find(params[:okr_id])
    @kr = Kr.new
  end

  # GET /krs/1/edit
  def edit
    @okr = Okr.find(params[:okr_id])
  end

  # POST /krs
  # POST /krs.json
  def create
    @team = Team.find(params[:team_id])
    @okr = Okr.find(params[:okr_id])
    @kr = Kr.new(kr_params)


      if @kr.save
        redirect_to action: "show", id: @kr.id


        #format.html { redirect_to @kr, notice: 'Kr was successfully created.' }
        #format.json { render :show, status: :created, location: @kr }
      else
        flash[:error] = @kr.error.full_messages
        redirect_to action: "new", id: @kr.id


        #format.html { render :new }
        #format.json { render json: @kr.errors, status: :unprocessable_entity }

      end
  end

  # PATCH/PUT /krs/1
  # PATCH/PUT /krs/1.json
  def update

    if @kr.update(kr_params)

          redirect_to action: "show", id: @kr.id, notice: "O KR foi editado com sucesso!"
     else


    end
  end

  # DELETE /krs/1
  # DELETE /krs/1.json
  def destroy
    @kr.destroy
    redirect_to team_okr_krs_path(@okr)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:team_id])
    end

    def set_okr
      @okr = Okr.find(params[:okr_id])
    end

    def set_kr
      @kr = Kr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kr_params
      params.require(:kr).permit(:title, :howtoscore, :progress, :okr_id)
    end
end
