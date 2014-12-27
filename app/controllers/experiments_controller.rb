class ExperimentsController < ApplicationController
  def show
    before_id
  end

  def update
    before_id
    if !params[:experiment][:leavemessages].nil?
      @experiment.update_attribute(:leavemessages, !@experiment.leavemessages)
      redirect_to_experiment
    elsif !params[:experiment][:speadmins].nil?
      @experiment.update_attribute(:speadmins, !@experiment.speadmins)
      redirect_to_experiment
    end
  end


  def before_id
    if params[:specol_id].nil?
      @experiment = Experiment.find_by_user_id(current_user.id)
    else
      @specol = Specol.find(params[:specol_id])
      @experiment = Experiment.find_by_specol_id(@specol.id)
    end
  end

  def redirect_to_experiment
    if params[:specol_id].nil?
      redirect_to show_user_experiments_path(@experiment)
    else
      redirect_to show_specols_experiments_path(@experiment)
    end
  end

  private

    def experiment_params
      params.require(:experiment).permit(:leavemessages, :speadmins)
    end


end
