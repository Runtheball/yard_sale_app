class UsersController < ApplicationController
  skip_filter :ensure_logged_in

  #GET '/users'
  def index
    #renders the new.html.page
  end

  def new
    @new_user = User.new
  end

  def create
    #How does this call user_mailer? It doesn't - the create yardsale does. See yard_sale.rb after_create method
    @new_user = User.new(user_params)
    if @new_user.save
      #tell the UserMailer to send a welcome email
      UserMailer.welcome_email(@new_user)
      redirect_to login_path(@new_user), notice: "Yeehaw! Thet thar's the seweeet smell of 'Signup Success''"
    else
      render :new, notice: "Sheeeooot! Yer Login done failed"
    end
  end

  def edit
    @user = User.update_attributes(params)
    if @user.save
      redirect_to show_user_path
    else
      redirect_to edit_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user.delete
  end

  private

  def user_params
    params.require(:user).permit!
  end
end
