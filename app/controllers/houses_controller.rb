class HousesController < ApplicationController
	def new
		@house = House.new
	end

	def create
		@house = House.new(home_params)
		if @house.save
		  redirect_to houses_path
		end
	end
	
	def index
        @house = House.all
	end

	def destroy
	    @house = House.find(params[:id])
	    @house.destroy
	    redirect_to houses_path, :notice => "Your house has been deleted"
	end

	private
	def home_params
      params.require(:house).permit(:hno, :harea)
    end
end
