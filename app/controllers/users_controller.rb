class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @recipes = @user.recipes
  end

  def create
  end
end
