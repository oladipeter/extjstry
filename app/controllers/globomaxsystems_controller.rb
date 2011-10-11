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

  # --------------------------------------------- EXTJS WINDOWS -------------------------------------------------------

  def globomax_system_list_window
    # Window with 'show_index_window_data' datas
  end

  def add_new_globomax_system_window
    # Create a form with basic fields
  end

end
