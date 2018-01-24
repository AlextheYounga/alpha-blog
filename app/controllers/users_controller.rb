class UsersController < ApplicationController
  
  def signup
    @user = User.new
  end


    def create
    @user = User.new(user_params)
      if @user.save
    flash[:success] = "Welcome Alex"
      redirect_to articles_path
    else
      render 'signup'
      end
    end  
    
    
    

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end