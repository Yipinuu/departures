class LeavemessagesController < ApplicationController

  layout "one"

  def index
    @specol = Specol.find(params[:specol_id])
  end

  def create
   @specol = Specol.find(params[:specol_id])
   @message = current_user.leavemessages.build(leavemessage_create)
   if @message.save
     redirect_to leavemessages_path
   else
     render 'index'
   end
  end

  private

    def leavemessage_create
      params.require(:leavemessage).permit(:message, :specol_id)
    end

end
