class MicrosController < ApplicationController

	def index
		@micros = Micro.where(user_id:current_user.id)
	end

	def show
	end

	def new
		@micro = Micro.new
	end

	def create
		@micro = current_user.micros.build(micro_params)
		if @micro.save
			redirect_to '/'
		else
			render 'new'
		end
	end

	def edit
	end

	def update
	end

	def delete
	end

	private

	def micro_params
		params.require(:micro).permit(:user_id,:location,:description,:aggressor,:severity)
	end


end
