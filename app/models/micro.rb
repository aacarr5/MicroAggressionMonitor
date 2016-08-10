class Micro < ActiveRecord::Base

	include MicroTypes

	belongs_to :user

end
