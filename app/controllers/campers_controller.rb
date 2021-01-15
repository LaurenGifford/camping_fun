class CampersController < ApplicationController

    def index
        @campers = Camper.all
    end

    def show
        @camper = Camper.find(params[:id])
    end

    def new
        @camper = Camper.new
    end

    def create
        camper = Camper.create(camper_params(:name, :age))
        redirect_to camper_path(camper)
    end

    private

    def camper_params(*args)
        params.require(:camper).permit(*args)
    end

end
