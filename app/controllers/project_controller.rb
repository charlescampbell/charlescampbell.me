# frozen_string_literal: true

class ProjectController < ApplicationController
  layout 'backend', only: %i[backend]

  def index
    render 'frontend/projects/index'
  end

  def backend
    render 'backend/projects/index'
  end

  private

  def set_projects; end
end
