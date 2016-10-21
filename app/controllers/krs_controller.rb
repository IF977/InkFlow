class KrsController < ApplicationController
	before_action :set_okr

	def create
		@kr = @okr.krs.create(kr_params)
		redirect_to @okr
	end

	def destroy
		@kr = @okr.krs.find(params[:id])
		if @kr.destroy
			flash[:success] = "KR was deleted."
		else
			flash[:error] = "KR could not be deleted."
		end
		redirect_to @okr
	end
	



	private

	def set_okr
		@okr = Okr.find(params[:okr_id])
	end

	def kr_params
		params[:kr].permit(:content)
	end






end
