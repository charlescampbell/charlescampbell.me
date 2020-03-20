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

  def duration_for(highlight)
    from = format_date(highlight.start_date)
    to = highlight.end_date.nil? ? 'Present' : format_date(highlight.end_date)

    "#{from} - #{to}"
  end

  private

  def format_date(date)
    l(date, format: :default)
  end
end
