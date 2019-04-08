class SmoothiesController < ApplicationController
	def index
		@smoothies=Smoothie.all
	end

	def show
		@smoothie=Smoothie.find(params[:id])
	end

	def new
		@smoothie=Smoothie.new
	end

	def create
		@smoothie= Smoothie.create(name: params[:smoothie][:name], price: params[:smoothie][:price])
		redirect_to @smoothie
	end

	def edit
		@smoothie=Smoothie.find(params[:id])
	end

	def update
		@smoothie=Smoothie.find(params[:id])
		@smoothie.update(name: params[:smoothie][:name], price: params[:smoothie][:price])
		redirect_to @smoothie
	end

	def destroy
		@smoothie=Smoothie.find(params[:id])
		@smoothie.destroy
	end

end
