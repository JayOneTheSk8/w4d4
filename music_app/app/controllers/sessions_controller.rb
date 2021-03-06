class SessionsController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password]
    )

    if user
      log_in!(user)
      redirect_to user_url
    else
      @user = User.new(email: params[:user][:email])
      flash.now[:errors] = ['Invalid username or password']
      render :new
    end
  end

  def destroy
    log_out!
  end
end
