# frozen_string_literal: true

class HomeController < ApplicationController
  layout 'backend', only: %i[backend]

  def index
    render 'frontend/home/index'
  end

  def backend
    render 'backend/home/index'
  end
end
