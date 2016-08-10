require 'rails_helper'

RSpec.describe MicrosController, type: :controller do
	before(:example) do 
		login("1@gmail.com")
	end

	describe "GET index" do 
		xit 'assigns @micros' do 
			micro = Micro.where(user_id:session["user"]) #
			get :index
			expect(assigns("micros")).to eq([micro])
		end
	end
end
