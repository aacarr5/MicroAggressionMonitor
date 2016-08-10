class MicroAggression < ActiveRecord::Base

	include MicroTypes

	belongs_to :user

end
