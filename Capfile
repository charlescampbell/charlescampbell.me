# frozen_string_literal: true

require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/scm/git'
require 'capistrano/rails'
require 'capistrano/passenger'
require 'capistrano/rbenv'

install_plugin Capistrano::SCM::Git

set :rbenv_type, :user
set :rbenv_ruby, '2.6.3'

Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
