class DaysController < ApplicationController

	def new
		@day = Day.new
		@menu = Menu.new
	end

def create
		@day = Day.new(params[:day])
		@day.save

		@menu = Menu.new(params[:menu])
		@menu.day_id =  @day.id
		@menu.save
		

		redirect_to @day
	end
	
	
	def show
		@day = Day.find(params[:id])
	end

end
