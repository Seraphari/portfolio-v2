class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def home
    @projects = Project.all
  end

end
