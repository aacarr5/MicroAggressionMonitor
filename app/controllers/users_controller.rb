class UsersController < ApplicationController

	def dashboard
		@micros = Micro.where(user_id:current_user.id)
		respond_to do |format|
			format.json {render json: @micros } 
			format.html
		end
	end


end
