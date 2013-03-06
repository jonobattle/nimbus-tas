class SiteController < ApplicationController

  layout :select_layout

  def index

    @site = Site.first

    # Render the defined layout template
    render :template => "templates/custom-tas/views/homepage"

  end


  private

  def select_layout

    "templates/custom-tas/layouts/application"

  end

end
