class SpecolsController < ApplicationController

  layout "one"

  def zanshi
    @article = initialize_grid(Article)
  end

  def show
    @specol = Specol.find_by_title(params[:title]) 
    @specols = Specol.all
    @speadmins = @specol.speadmins.all
  end

  def new
  end

  def create
    specol = current_user.specols.build(specol_params)
    if specol.save
    specol.spepages.create!(:pagename => "默认")
    specol.experiment.create!
    redirect_to show_specol_path(specol.title)
    else
    render 'new'
    end
  end


  private

    def specol_params
      params.require(:specol).permit(:title, :user_id)
    end



end
