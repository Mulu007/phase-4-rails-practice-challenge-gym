class ClientsController < ApplicationController

    def index
        render json: Client.all, status: :ok
    end

    def show
        render json: find_client, status: :ok , methods: :total_charges
    end

    def update
        find_client.update!(params.permit(:name, :age))
        render json: find_client, status: :accepted
    end

    private
    def find_client
        Client.find(params[:id])
    end
end
