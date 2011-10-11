class GlobomaxsystemsController < ApplicationController

  def index
    # Server response in JSON
    @globomaxsystems = Globomaxsystem.all
    render :json => { :globomax_systems => @globomaxsystems }
  end

  # --------------------------------------------- EXTJS WINDOWS -------------------------------------------------------

  def show_index_window
    # Show extjs window with index method datas
  end


end
