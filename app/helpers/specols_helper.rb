module SpecolsHelper

  def current_speadmin?
    if !current_user.nil?
      speadmin = nil
      specolid
      @speadmins = @specol.speadmins.all
      if @speadmins.nil?
        speadmin = true if current_user.id == @specol.user_id
      else
        unless current_user.id == @specol.user_id
          for admin in @speadmins
            speadmin = true if urrent_user.id == admin.user_id
          end
        else
          speadmin = true
        end 
      end
      !speadmin.nil?
    end
  end

  def specolid
    if params[:specol_id].nil?	
      @specol=Specol.find_by_title(params[:title])
    else
      @specol=Specol.find(params[:specol_id])
    end
  end


end
