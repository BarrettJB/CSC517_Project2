class HousesController < ApplicationController
  def create
    @real_estate_company = RealEstateCompany.find(params[:real_estate_company_id])
    @house = @real_estate_company.houses.create(house_params)
    redirect_to real_estate_company_path(@real_estate_company)
  end
  
private
  def house_params
    params.require(:house).permit(:location, :square_footage, :year_built, :style, :list_price, :floors, :basement, :current_owner, :contact_information)
  end
end
