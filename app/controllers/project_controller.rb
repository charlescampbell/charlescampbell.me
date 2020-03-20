# frozen_string_literal: true

class ProjectController < ApplicationController
  def index
    render 'frontend/projects/index'
  end
end
