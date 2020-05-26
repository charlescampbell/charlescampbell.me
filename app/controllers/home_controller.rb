# frozen_string_literal: true

class HomeController < ApplicationController
  layout 'backend', only: %i[backend]

  before_action :set_highlights, only: %i[index backend]

  http_basic_authenticate_with name: ENV['BACKEND_USERNAME'],
                               password: ENV['BACKEND_PASSWORD'],
                               only: %i[backend]

  def index
    render 'frontend/home/index'
  end

  def backend
    render 'backend/home/index'
  end

  private

  def set_highlights
    @highlights = Highlight.all
  end
end
