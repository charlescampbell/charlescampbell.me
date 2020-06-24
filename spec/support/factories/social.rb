# frozen_string_literal: true

FactoryBot.define do
  factory :social do
    friendly_name { 'Instagram' }
    url { 'www.insta.com' }
    icon { 'fa fa-instagram' }
    display { 'y' }
  end
end
