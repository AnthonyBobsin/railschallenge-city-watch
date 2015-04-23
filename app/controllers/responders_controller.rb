class RespondersController < ApplicationController
    
    def show
        @responder = Responder.find(params[:id])
    end

    def create
        @responder = Responder.new(responder_params)
        if @responder.save
            render :show, status: 201
        else
            render json: get_resource.errors, status: 422
        end
    end

    private

    def responder_params
        params.require(:responder).permit(:type, :name, :capacity)
    end

end
