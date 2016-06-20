class SessionsController < ApplicationController
  def index

  end

  def new
  end
  def join

  end
  def create
    user = User.find_by_email(params[:email])


   if user && user.authenticate(params[:password])
     session[:user_id] = user.id
     redirect_to '/users'
   else
     flash[:errors] = ["Invalid combination"]
     redirect_to :back
   end
  end

  def register
    @user = User.new(users_params)
    if @user.save
      session[:user_id] = @user.id
      @user = current_user
    end
    redirect_to '/edit'

  end

  def destroy
    reset_session
    redirect_to :root
  end
  private
  def users_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
