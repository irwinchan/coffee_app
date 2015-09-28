class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all.order(created_at: :desc)
    if current_user
      @recipe = current_user.recipes.build
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    @user = User.find(@recipe.user_id)
  end


  def new
    @recipe = Recipe.new
  end

  def create
    user = User.find(current_user.id)
    @recipe = user.recipes.new(recipe_params)
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
    params.require(:recipe).permit(:user_id, :water_vol, :water_temp, :title, :technique, :description)
  end

end
