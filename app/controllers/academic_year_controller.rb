# frozen_string_literal: true

class AcademicYearController < ApplicationController
  before_action :set_academic_year, only: %i[show edit update destroy]

  def new
    @academic_year = AcademicYear.new

    render 'backend/academic_year/new'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
    render 'backend/academic_year/edit'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @academic_year = AcademicYear.new(academic_year_params)

    respond_to do |format|
      if @academic_year.save
        format.html do
          redirect_to backend_education_path, notice: 'academic_year created'
        end
      else
        format.html do
          redirect_to backend_education_path, notice: 'failed to create'
        end
      end
    end
  end

  def update
    respond_to do |format|
      if @academic_year.update(academic_year_params)
        format.html do
          redirect_to backend_education_path, notice: 'academic_year updated'
        end
      else
        format.html do
          redirect_to backend_education_path, notice: 'failed to update'
        end
      end
    end
  end

  def destroy
    @academic_year.destroy
    respond_to do |format|
      format.html do
        redirect_to backend_education_path, notice: 'academic_year removed'
      end
    end
  end

  private

  def set_academic_year
    @academic_year = AcademicYear.find(params[:id])
  end

  def academic_year_params
    params.require(:academic_year).permit(:title, :grade, :qualification_id)
  end
end
