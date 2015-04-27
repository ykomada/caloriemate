class FoodsController < ApplicationController

	def index
		@foods = Food.all
	end

	def new
	end

	def create 
		@food = Food.new(params[:food])

		@food.save
		redirect_to @food
	end

	def show
		@food = Food.find(params[:id])
	end

	def edit
		@food = Food.find(params[:id])
	end

	def update
		@food = Food.find(params[:id])

		if @food.update_attributes(params[:food])
			redirect_to @food
		else
			render 'edit'
		end
	end

	def destroy
		@food = Food.find(params[:id])
		@food.destroy

		redirect_to @food
	end
end
