class UsersController < ApplicationController

  layout "one"

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new 
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      specol1 = current_user.specols.build(title:"#{current_user.username}的所有文章")
      specol1.save
      specol1.spepages.create!(pagename:"默认")
      Experiment.create!(:specol_id => specol1.id)
      Experiment.create!(:user_id => @user.id )
      redirect_to show_user_path(@user)
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

end
