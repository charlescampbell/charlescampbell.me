# frozen_string_literal: true

module DateHelper
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
