class CoffeeBeansController < ApplicationController
  def new
    @coffee = CoffeeBean.new
  end

  def create
    @user = User.find(params[:user_id])
    @coffee = @user.coffee_beans.new(coffee_params)
    if @coffee.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
    @coffee = CoffeeBean.find(params[:id])
  end

  def update
    @user = current_user
    @coffee = CoffeeBean.find(params[:id])
    if @coffee.update_attributes(coffee_params)
      redirect_to user_coffee_beans_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @coffee = CoffeeBean.find(params[:id])
    @coffee.destroy
    redirect_to user_coffee_beans_path(current_user)
  end

  def index
    @user = User.find(params[:user_id])
    @coffees = @user.coffee_beans.all
  end

  def show
    @coffee = CoffeeBean.find(params[:id])
  end

  private
  def coffee_params
    params.require(:coffee_bean).permit(:brand, :roast, :name, :origin, :description_short)
  end

end
