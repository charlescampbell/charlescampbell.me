# frozen_string_literal: true

module ApplicationHelper
  def active_link?(page)
    return 'active' if request.original_url.to_s.include?(page)

    ''
  end

  def active_home?
    return 'active' if request.original_url.to_s == root_url

    ''
  end

  def socials
    Social.all
  end
end
