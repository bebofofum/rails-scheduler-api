class CurrentUserController < ApplicationController
  # this before action will ensure we see a 200 response only if we have a valid JWT in the headers
  before_action :authenticate_user!

  def index
    render json: current_user, status: :ok
  end

  
end
