class CoffeeBeansController < ApplicationController
  def new
    @coffee = CoffeeBean.new
  end

  def create
    @coffee = CoffeeBean.new(coffee_params)
    if @coffee.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @coffee = CoffeeBean.find(params[:id])
  end

  def update
    @coffee = CoffeeBean.find(params[:id])
    @coffee = @coffee.update_attributes(coffee_params)
    redirect_to coffee_bean_path(@coffee)
  end

  def destroy
    @coffee = CoffeeBean.find(params[:id])
    @coffee.destroy
    redirect_to user_path(current_user)
  end

  def index
    @coffees = CoffeeBean.all
  end

  def show
    @coffee = CoffeeBean.find(params[:id])
  end

  private
  def coffee_params
    params.require(:coffee_bean).permit(:brand, :roast, :name, :origin)
  end

end
