class InquiriesController < ApplicationController
  def index
    @house = House.find(params[:house_id])
    @inquiries = @house.inquiries
  end
  
  def show
    @house = House.find(params[:house_id])
    @inquiry = Inquiry.find(params[:id])
  end
  
  def new
    @house = House.find(params[:house_id])
    @inquiry = @house.inquiries.create()
  end
  
  def edit
    @house = House.find(params[:house_id])
    @inquiry = @house.inquiries.find(params[:id])
  end
  
  def create
    @house = House.find(params[:house_id])
    @inquiry = Inquiry.new(inquiry_params)
    @inquiry.user = current_user
    @inquiry.house = @house
    @inquiry.save
    redirect_to house_path(@house)
  end
  
  def update
    @house = House.find(params[:house_id])
    @inquiry = @house.inquiries.find(params[:id])
    if @inquiry.update(inquiry_params)
      redirect_to house_path(@house)
    else
      render 'edit'
    end
  end
  
  def destroy
    @house = House.find(params[:house_id])
    @inquiry = @house.inquiries.find(params[:id])
    @inquiry.destroy
    
    redirect_to house_path(@house)
  end

private
  def inquiry_params
    params.require(:inquiry).permit(:subject,:message,:reply)
  end
end
