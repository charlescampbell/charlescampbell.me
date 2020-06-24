# frozen_string_literal: true

require 'factory_bot'
require_relative 'factories/highlight'
require_relative 'factories/tool'
require_relative 'factories/tag'
require_relative 'factories/qualification'
require_relative 'factories/academic_year'
require_relative 'factories/education'
require_relative 'factories/social'
require_relative 'factories/profile'

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end
