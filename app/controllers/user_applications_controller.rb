class UserApplicationsController < ApplicationController
  def show
    @app = UserApplication.find(params[:id])
  end
end