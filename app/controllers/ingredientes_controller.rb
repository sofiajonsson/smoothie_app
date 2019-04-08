class IngredientesController < ApplicationController

	def index
		@ingredientes=Ingrediente.all
	end

	def show
		@ingrediente=Ingrediente.find(params[:id])
	end

	def new
		@ingrediente=Ingrediente.new
		@smoothies=Smoothie.all
	end

	def create
		# byebug
		@ingrediente= Ingrediente.create(name: params[:ingredient][:name], price: params[:ingredient][:price], smoothie_id: params[:smoothies])
		if @ingrediente.save
				redirect_to @ingrediente
		else
			render :new
		end
	end

	def edit
		@ingrediente=Ingrediente.find(params[:id])
		@smoothies=Smoothie.all
	end

	def update
		@ingrediente=Ingrediente.find(params[:id])
		@ingrediente.update(name: params[:ingredient][:name], price: params[:ingredient][:price])
		redirect_to @ingrediente
	end

	def destroy
		@ingrediente=Ingrediente.find(params[:id])
		@ingrediente.destroy
	end

end
