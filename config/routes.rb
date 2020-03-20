# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'

  get 'home/index', to: 'home#index', as: :home
  get 'projects', to: 'project#index', as: :project
  get 'education', to: 'education#index', as: :education

  get 'backend/home', to: 'home#backend', as: :backend
  get 'backend/projects', to: 'project#backend', as: :backend_projects

  scope :social do
    get 'new', to: 'socials#new', as: :new_social
    get 'edit/:id', to: 'socials#edit', as: :edit_social
    post 'create', to: 'socials#create', as: :create_social
    patch 'update/:id', to: 'socials#update', as: :update_social
    delete 'delete/:id', to: 'socials#destroy', as: :delete_social
  end

  scope :highlight do
    get 'new', to: 'highlight#new', as: :new_highlight
    get 'edit/:id', to: 'highlight#edit', as: :edit_highlight
    post 'create', to: 'highlight#create', as: :create_highlight
    patch 'update/:id', to: 'highlight#update', as: :update_highlight
    delete 'delete/:id', to: 'highlight#destroy', as: :delete_highlight
  end

  scope :project do
    get 'new', to: 'project#new', as: :new_project
    get 'edit/:id', to: 'project#edit', as: :edit_project
    post 'create', to: 'project#create', as: :create_project
    patch 'update/:id', to: 'project#update', as: :update_project
    delete 'delete/:id', to: 'project#destroy', as: :delete_project
  end
end
