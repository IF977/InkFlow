class KrsController < ApplicationController
	before_action :set_okr
	before_action :set_kr, except: [:create]

	def create
		@kr = @okr.krs.create(kr_params)
		redirect_to @okr
	end

	def destroy
		if @kr.destroy
			flash[:success] = "KR was deleted."
		else
			flash[:error] = "KR could not be deleted."
		end
		redirect_to @okr
	end
	
	def complete
		@kr.update_attribute(:completed_at, Time.now)
		redirect_to @okr, notice: "KR completed"
	end



	private

	def set_okr
		@okr = Okr.find(params[:okr_id])
	end

	def set_kr
		@kr = @okr.krs.find(params[:id])
	end

	def kr_params
		params[:kr].permit(:content)
	end


end
