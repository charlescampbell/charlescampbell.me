# frozen_string_literal: true

class ProjectController < ApplicationController
  layout 'backend', only: %i[backend]

  before_action :set_projects, only: %i[index backend]
  before_action :set_project, only: %i[edit update destroy]

  def index
    render 'frontend/projects/index'
  end

  def backend
    render 'backend/projects/index'
  end

  def new
    @project = Project.new

    render 'backend/projects/new'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
    render 'backend/projects/edit'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html do
          redirect_to backend_projects_path, notice: 'project created'
        end
      else
        format.html do
          redirect_to backend_projects_path, notice: 'failed to create'
        end
      end
    end
  end

  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html do
          redirect_to backend_projects_path, notice: 'project updated'
        end
      else
        format.html do
          redirect_to backend_projects_path, notice: 'failed to update'
        end
      end
    end
  end

  def destroy
    @project.destroy
    respond_to do |format|
      format.html do
        redirect_to backend_projects_path, notice: 'project removed'
      end
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def set_projects
    @projects = Project.all
  end

  def project_params
    params.require(:project).permit(:friendly_name, :url)
  end
end
