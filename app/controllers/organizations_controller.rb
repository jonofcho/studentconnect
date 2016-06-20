class OrganizationsController < ApplicationController
  def create
    org = Organization.new(users_params)
    org.save
    redirect_to '/users'
  end
  def register

  end
  def destroy
    @organization= Organization.all
    if Organization.find(params[:id]).destroy
      flash[:success] = "Peace Out HomeBoi"
      redirect_to '/users'

    else
      flash[:errors] = "Couldn't delete T_T."
      redirect_to '/users'
    end
  end
  def edit
    @org = Organization.find_by(id: params[:id])
  end
  def update
    if @org = Organization.find_by(id: params[:id])
    @org.update_attributes(organizations_params)
    redirect_to '/users'
      else
        flash[:errors] = "No Bueno dawg"
        redirect_to :back
    end

  end
  private
  def users_params
    params.require(:organization).permit(:name, :current_location, :description, :weblink, :email)
  end
  def organizations_params
    params.require(:organization).permit(:name, :current_location, :description, :weblink, :email)
  end

end
