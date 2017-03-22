class HomeController < ApplicationController
  def index
    
    @inputResult = Building.all
    
  end
  
  def delete
    
    Building.delete_all
    
  end
  
  def upload_bld
    
    bld = Building.new
    bld.building_name = params[:building_nm]
    bld.building_story = params[:building_stry]
    bld.building_address = params[:building_addrs]
    bld.save
    
    redirect_to "/home/index"
    
    
  end
end
