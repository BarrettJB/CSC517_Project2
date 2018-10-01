class HousesController < ApplicationController

  def index
    @houses = House.all
  end
  
  def show
    @house = House.find(params[:id])
  end
  
  def new
    @house = House.new
  end
  
  def edit
    @house = House.find(params[:id])
  end
  
  def create
    @house = House.new(house_params)
    @house[:real_estate_company_id] = current_user.company.id
    @house[:user_id] = current_user.id
    if @house.save
      redirect_to @house
    else
      render 'new'
    end
  end
  
  def update
    @house = House.find(params[:id])
    if @house.update(house_params)
      redirect_to(@house)
    else
      render 'edit'
    end
  end
  
  def destroy
    @house = House.find(params[:id])
    @house.destroy
    
    redirect_to houses_path
  end
  
  def onclick
    puts "Hello World"
  end
private
  def house_params
    params.require(:house).permit(:location, :square_footage, :year_built, :style, :list_price, :floors, :basement, :current_owner, :contact_information)
  end
end
