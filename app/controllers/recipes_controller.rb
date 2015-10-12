class RecipesController < ApplicationController

  def index
    search = params[:search]
    if search
      @recipes = Recipe.where('description LIKE ? OR title LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%").order(created_at: :desc)
    else
      @recipes = Recipe.all.order(created_at: :desc)
    end

    if current_user
      @recipe = current_user.recipes.build
      @coffee = CoffeeBean.where('user_id = ?', current_user)
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
    @recipe = current_user.recipes.find(params[:id])
  end

  def update
    @recipe = current_user.recipes.find(params[:id])
    @recipe.update_attributes(recipe_params)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to user_path(current_user)
  end

  private
  def recipe_params
    params.require(:recipe).permit(:user_id, :water_vol, :water_temp, :title, :technique, :description, :coffee_bean_id, :coffee_amount)
  end

end