module ExperimentHelper

  def  experiment_speadmins
   specolid
   @experiment = Experiment.find_by(:specol_id => @specol.id)
   if @experiment.speadmins
     return true
   else
     return false 
   end
  end 

  def  experiment_leavemessages
   specolid
   @experiment = Experiment.find_by(:specol_id => @specol.id)
   if @experiment.leavemessages
     return true
   else
     return false 
   end
  end   

end
