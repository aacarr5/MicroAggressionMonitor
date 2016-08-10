class MicroAggressionsController < ApplicationController

	def index
		@micros = MicroAggression.where(user_id:current_user.id)
	end

	def show
	end

	def new
		@micro = MicroAggression.new
	end

	def create
		@micro = current_user.micro_aggressions.build(micro_params)
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
		params.require(:micro_aggression).permit(:user_id,:location,:description,:aggressor,:severity)
	end


end
