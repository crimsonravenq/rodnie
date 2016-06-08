class CategoriesController < ApplicationController
	def index
		@category= Category.all
		
	end
	def show
		
		@showcat = Category.find(params[:id])

		
		@showevents = @showcat.events
		end
end
