class SpebackstagesController < ApplicationController
  layout "one"

  before_action :specolbackstageauth

  def show
    @specol = Specol.find(params[:specol_id]) 
  end

  def new_speadmin
    @specol = Specol.find(params[:specol_id]) 
  end

  def new_spepage
    @specol = Specol.find(params[:specol_id]) 
  end

  def create_speadmin
    sa = Speadmin.new(speadmin_params)
    sa.save
    redirect_to show_spebackstage_path(sa.specol_id)

  end

  def create_spepage
    @specol = Specol.find(params[:specol_id]) 
    @specols = Specol.all
    @spepage = @specol.spepages.build(spepage_params)
    if @spepage.save
      redirect_to show_spebackstage_path(@specol.id)
    else
      render 'show'
    end
  end

  def comment_message
    @specol = Specol.find(params[:specol_id]) 
  end

  def create_comment_message
    @comment = Leavemessage.find_by_comment(params[:comment])
    if @comment.update_attributes(comment_message_params)
      redirect_to create_comment_message_path
    else
      render 'create_comment_message'
    end
    
  end

  private

    def spepage_params
      params.require(:spepage).permit(:pagename, :specol_id)
    end

    def speadmin_params
      params.require(:speadmin).permit(:user_id, :specol_id)
    end

    def comment_message_params
      params.require(:leavemessage).permit(:comment)
    end

    def specolbackstageauth
      redirect_to show_specol_path(@specol.title) unless current_speadmin?
    end


end
