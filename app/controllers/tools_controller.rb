# frozen_string_literal: true

class ToolsController < ApplicationController
  layout 'backend', only: %i[backend]

  before_action :set_tools, only: %i[index backend]
  before_action :set_languages, only: %i[index backend]
  before_action :set_applications, only: %i[index backend]
  before_action :set_tool, only: %i[destroy]

  http_basic_authenticate_with name: ENV['BACKEND_USERNAME'],
                               password: ENV['BACKEND_PASSWORD'],
                               only: %i[backend]

  def index
    render 'frontend/tools/index'
  end

  def backend
    render 'backend/tools/index'
  end

  def new
    @tool = Tool.new

    render 'backend/tools/new'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @tool = Tool.new(tool_params)
    @tool.tool = @tool.tool.upcase

    respond_to do |format|
      if @tool.save
        format.html do
          redirect_to backend_tools_path, notice: 'tool created'
        end
      else
        format.html do
          redirect_to backend_tools_path, notice: 'failed to create'
        end
      end
    end
  end

  def destroy
    @tool.destroy
    respond_to do |format|
      format.html do
        redirect_to backend_tools_path, notice: 'tool removed'
      end
    end
  end

  private

  def set_tool
    @tool = Tool.find(params[:id])
  end

  def set_tools
    @tools = Tool.all
  end

  def set_languages
    @languages = Tool.where(status: 'language')
  end

  def set_applications
    @applications = Tool.where(status: 'tool')
  end

  def tool_params
    params.require(:tool).permit(:tool, :colour, :status, :icon_url)
  end
end
