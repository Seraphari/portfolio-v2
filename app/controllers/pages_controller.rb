class PagesController < ApplicationController

  def about

  end

  def home
    @projects = Project.includes(:project_business, :project_design, :project_technology).all
  end

end
