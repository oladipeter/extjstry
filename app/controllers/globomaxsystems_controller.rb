class GlobomaxsystemsController < ApplicationController

  def globomax_system_list_window_data
    # Server response in JSON
    @globomaxsystems = Globomaxsystem.all
    render :json => { :globomax_systems => @globomaxsystems }
  end

  def create_system
    @globomax_system = Globomaxsystem.new(params[:globomaxsystem])
    if @globomax_system.save
      render :json => {:success => true}
    else
      render :json => {:failure => true}
    end
  end

  def delete_system
    @globomax_system = Globomaxsystem.find(params[:id])
    if @globomax_system.destroy
      render :json => { :success => :true }
    else
      render :json => {:failure => true }
    end
  end

  def modify_system
    @globomax_system = Globomaxsystem.find(:id)
    if @globomax_system
      render :json => {:success => true, :g_system => @globomax_system }
    else
      render :json => {:failure => true }
    end
  end

  # --------------------------------------------- EXTJS WINDOWS -------------------------------------------------------

  def globomax_system_list_window
    # Window with 'show_index_window_data' datas
    respond_to do |format|
      format.js
    end
  end

  def add_new_globomax_system_window
    # Create a form with basic fields
    respond_to do |format|
      format.js
    end
  end

  def globomax_system_modify_window
    @globomax_system = Globomaxsystem.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

end
