class MembershipsController < ApplicationController

    def create
        member = Membership.create!(params.permit(:gym_id, :client_id, :charge))
        render json: member, status: :created
    end
end
