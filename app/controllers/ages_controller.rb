class AgesController < ApplicationController
	def show
		@age = Age.find(params[:id])
		@events = @age.events
	end
end
