# frozen_string_literal: true

module ApplicationHelper
  def unit_title_for(education_id)
    education = Education.find(education_id)
    education.unit
  end

  def socials
    Social.order('position ASC')
  end

  def mobile_icon?(social)
    return 'hide-icon' unless social.display == 'y'

    ''
  end

  def profile(title)
    Profile.where(title: title).first
  end

  def version
    "v#{File.read('./VERSION')}"
  end
end
