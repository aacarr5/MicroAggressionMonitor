class MicroAggressionsController < ApplicationController

	def index
		@micros = MicroAggression.where(user_id:current_user.id)
	end

	def show
	end

	def new
		@micro = Micro.new
	end

	def create
		@micro = current_user.micro_aggressions.build(micro_params)
	end

	def edit
	end

	def update
	end

	def delete
	end

	private

	def micro_params
		params.require(:microaggression).permit(:user_id,:location,:description,:aggressor,:severity)
	end


end
