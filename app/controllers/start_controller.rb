class StartController < ApplicationController

  def index
  end

  def show_main_toolbar
    respond_to do |format|
      format.js
    end
  end

end
