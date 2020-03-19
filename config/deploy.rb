# frozen_string_literal: true

# config valid for current version and patch releases of Capistrano
lock '~> 3.12.1'

set :application, 'campbell-me'
set :repo_url, 'git@github.com:charlescampbell/campbell.me.git'
set :deploy_to, "/home/deploy/#{fetch :application}"
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets',
       'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

set :keep_releases, 3
