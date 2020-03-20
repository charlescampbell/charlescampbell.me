# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    render 'frontend/home/index'
  end
end
