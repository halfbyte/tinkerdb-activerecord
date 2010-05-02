class PartInstancesController < ApplicationController
  
  before_filter :login_required
  
  before_filter :load_part, :only => [:new, :create]
  
  def new
    @part_instance = @part.part_instances.build
  end
  
  def create
    @part_instance = @part.part_instances.build(params[:part_instance])
    @part_instance.user = current_user
    if  @part_instance.save
      flash[:notice] = "Your Stock item has been saved"
      redirect_to part_path(@part)
    else
      render :action => 'new'
    end
  end

  def edit
    @part_instance = PartInstance.find(params[:id])
  end
  
  def update
    @part_instance = PartInstance.find(params[:id])
    if  @part_instance.update_attributes(params[:part_instance])
      flash[:notice] = "Your Stock item has been updated"
      redirect_to part_path(@part_instance.part)
    else
      render :action => 'edit'
    end
    
  end

  def load_part
    @part = Part.find(params[:part_id])
  end

end
