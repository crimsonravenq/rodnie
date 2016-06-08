class OrganizationsController < ApplicationController
layout 'admin'
  
	def new
    @organization = Organization.new
  end
  
  def show
    @organization = current_organization
  end
  
  def edit
    @user = current_organization
  end
  
  def update
    @organization = current_organization
    if @organization.update_attributes(organization_edit_params)
      redirect_to '/'
    else
      render '/organization/edit'
    end
  end
  
  def create
    @organization = Organization.new(organization_params)
    if @organization.save
      session[:organization_id] = @organization.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end
  


private
  def organization_edit_params
    params.require(:organization).permit(:name,:email,:orgadress,:password,:service,:avatar,:phone:type)
  end


  private
  def organization_params
    params.require(:organization).permit(:name,:email,:orgadress,:password,:type)
  end	
end
