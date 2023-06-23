class PetsController < ApplicationController
  before_action :get_owner

  def index
    @pets = @owner.pets
    render json: { owner: @owner, pets: @pets }
  end

  private

  def get_owner
    @owner = Owner.find(params[:owner_id])
  end
end
