class RecipesController < ApplicationController


  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end


  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to :recipes
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def recipe_params
    params.require(:recipe).permit(:user_id, :water_vol, :water_temp, :title, :technique)
  end

end
