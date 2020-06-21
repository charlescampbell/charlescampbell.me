# frozen_string_literal: true

module TagHelper
  def tag_for(data)
    "<span class='#{colour_for(data)}'>#{data.tag}</span>".html_safe
  end

  private

  # rubocop:disable Metrics/MethodLength
  # rubocop:disable Metrics/CyclomaticComplexity
  def colour_for(data)
    colour = case data.colour
             when 'red'
               'danger'
             when 'green'
               'success'
             when 'yellow'
               'warning'
             when 'blue'
               'info'
             when 'white'
               'light'
             when 'black'
               'dark'
             else
               'primary'
             end

    "badge badge-#{colour}"
  end
  # rubocop:enable Metrics/MethodLength
  # rubocop:enable Metrics/CyclomaticComplexity
end