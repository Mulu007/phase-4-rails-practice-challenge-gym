class GymsController < ApplicationController

    def index
        render json: Gym.all, status: :ok
    end

    def show
        render json:find_gym, status: :ok
    end

    def update
        find_gym.update!(params.permit(:name, :address))
        render json: find_gym, status: :accepted
    end

    def destroy
        find_gym.destroy
        head :no_content
    end

    private

    def find_gym
        Gym.find(params[:id])
    end

end
