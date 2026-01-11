class BuildsController < ApplicationController
  before_filter :project
  before_filter :add_project_abilities
  before_filter :authorize_read_project!

  def index
    @builds = project.builds.order('created_at DESC').paginate(:page => params[:page])
  end

  def show
    @build = project.builds.find(params[:id])
  end

  def create
    @build = project.builds.new(params[:build])
    @build.status = 'pending'

    if @build.save
      BuildWorker.perform_async(@build.id)
      redirect_to project_build_path(project, @build), :notice => 'Build was successfully created and queued.'
    else
      redirect_to project_builds_path(project), :alert => 'Failed to create build.'
    end
  end
end
