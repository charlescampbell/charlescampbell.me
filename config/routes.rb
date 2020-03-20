# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'

  get 'home/index', to: 'home#index', as: :home
  get 'backend', to: 'home#backend', as: :backend
  get 'projects', to: 'project#index', as: :project
  get 'education', to: 'education#index', as: :education

  get 'social/new', to: 'socials#new', as: :new_social
  get 'social/edit/:id', to: 'socials#edit', as: :edit_social

  post 'social/create', to: 'socials#create', as: :create_social
  patch 'social/update/:id', to: 'socials#update', as: :update_social
  delete 'social/delete/:id', to: 'socials#destroy', as: :delete_social

  get 'home/backend', to: 'home#backend', as: :social
end
