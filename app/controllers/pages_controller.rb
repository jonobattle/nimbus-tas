class PagesController < ApplicationController

  layout :select_layout

  def index

    

  end


  def show_root_page

    # Grab the page slug from the params and search for that page
    @site = Site.first()

    if @site

      @page = @site.pages.where(:slug => params[:page_slug]).first

      render :template => "templates/custom-tas/views/" + @page.template.to_s

    end

  end


  def show_sub_page

    # Grab the page slug from the params and search for that page
    @site = Site.first()

    if @site

      @root_page = @site.pages.where(:slug => params[:page_slug]).first
      @page = @root_page.pages.where(:slug => params[:sub_page_slug]).first

      render :template => "templates/custom-tas/views/" + @page.template.to_s

    end

  end

  def show_sub_sub_page

    # Grab the page slug from the params and search for that page
    @site = Site.first()

    if @site

      @root_page = @site.pages.where(:slug => params[:page_slug]).first
      @parent_page = @root_page.pages.where(:slug => params[:sub_page_slug]).first
      @page = @parent_page.pages.where(:slug => params[:sub_sub_page_slug]).first

      render :template => "templates/custom-tas/views/" + @page.template.to_s

    end

  end  


  private

  def select_layout

    "templates/custom-tas/layouts/application"

  end


end
