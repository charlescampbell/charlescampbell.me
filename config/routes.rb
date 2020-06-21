# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'

  get 'home/index', to: 'home#index', as: :home
  get 'projects', to: 'project#index', as: :project
  get 'education', to: 'education#index', as: :education
  get 'history', to: 'gallary#history', as: :history_gallary

  scope :backend do
    root to: redirect('backend/home')
    get 'home', to: 'home#backend', as: :backend
    get 'projects', to: 'project#backend', as: :backend_projects
    get 'education', to: 'education#backend', as: :backend_education
    get 'gallary', to: 'gallary#backend', as: :backend_gallary
  end

  scope :profile do
    get 'new', to: 'profile#new', as: :new_profile
    get 'edit/:id', to: 'profile#edit', as: :edit_profile
    post 'create', to: 'profile#create', as: :create_profile
    patch 'update/:id', to: 'profile#update', as: :update_profile
    delete 'delete/:id', to: 'profile#destroy', as: :delete_profile
  end

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

  scope :tag do
    get 'new', to: 'tag#new', as: :new_tag
    get 'edit/:id', to: 'tag#edit', as: :edit_tag
    post 'create', to: 'tag#create', as: :create_tag
    patch 'update/:id', to: 'tag#update', as: :update_tag
    delete 'delete/:id', to: 'tag#destroy', as: :delete_tag
  end

  scope :education do
    get 'new', to: 'education#new', as: :new_education
    get 'edit/:id', to: 'education#edit', as: :edit_education
    post 'create', to: 'education#create', as: :create_education
    patch 'update/:id', to: 'education#update', as: :update_education
    delete 'delete/:id', to: 'education#destroy', as: :delete_education
  end

  scope :qualification do
    get 'new', to: 'qualification#new', as: :new_qualification
    get 'edit/:id', to: 'qualification#edit', as: :edit_qualification
    post 'create', to: 'qualification#create', as: :create_qualification
    patch 'update/:id', to: 'qualification#update', as: :update_qualification
    delete 'delete/:id', to: 'qualification#destroy', as: :delete_qualification
  end

  scope :academic_year do
    get 'new', to: 'academic_year#new', as: :new_academic_year
    get 'edit/:id', to: 'academic_year#edit', as: :edit_academic_year
    post 'create', to: 'academic_year#create', as: :create_academic_year
    patch 'update/:id', to: 'academic_year#update', as: :update_academic_year
    delete 'delete/:id', to: 'academic_year#destroy', as: :delete_academic_year
  end

  scope :gallary do
    get 'new', to: 'gallary#new', as: :new_image
    get 'show/:id', to: 'gallary#show', as: :show_gallary
    get 'edit/:id', to: 'gallary#edit', as: :edit_gallary
    post 'create', to: 'gallary#create', as: :create_gallary
    patch 'update/:id', to: 'gallary#update', as: :update_gallary
    delete 'delete/:id', to: 'gallary#destroy', as: :delete_gallary
  end
end
