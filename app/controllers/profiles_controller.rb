class ProfilesController < ApplicationController
  def index
  end

  def update

    @profile = get_profile
    if !@profile
      @user = current_user
      @profile = Profile.new(profiles_params)
      @profile.user_id = @user.id
      @profile.save
      redirect_to '/users'
    else
    @profile.update_attributes(profiles_params)
    redirect_to '/users'
    end
  end

  def edit

  end

  def destroy
  end
  private
  def profiles_params
    params.permit(:grad_year, :school, :major, :current_occupation, :fav_quote, :phone_number, :status, :email)
  end
  def get_profile
   @user = current_user
   if @user
       User.includes(:profile).find_by(id: @user.id).profile
   else

   end
 end
end
