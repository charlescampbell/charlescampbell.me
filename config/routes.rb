# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'

  get 'home/index', to: 'home#index', as: :home
  get 'projects', to: 'project#index', as: :project
  get 'education', to: 'education#index', as: :education
end
