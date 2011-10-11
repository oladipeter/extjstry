class AboutsController < ApplicationController

  def show_about_window
    @about = About.find(1)
    respond_to do |format|
      format.js
    end
  end

end
