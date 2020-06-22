# frozen_string_literal: true

module TagHelper
  def tag_link_for(data)
    link_to data.tag,
            delete_tag_path(data),
            class: colour_for(data),
            method: :delete,
            data: { confirm: "Delete #{data.tag} tag?" }
  end

  def tag_for(data)
    "<span class='#{colour_for(data)}'>#{data.tag}</span>".html_safe
  end

  def tool_link_tag(data)
    link_to data.tool,
            delete_tool_path(data),
            class: colour_for(data),
            method: :delete,
            data: { confirm: "Delete #{data.tool} tag?" }
  end

  def tool_tag(data)
    "<span class='#{colour_for(data)}'>#{data.tool}</span>".html_safe
  end

  def tool_icon(data)
    link_to image_tag(data.icon_url),
            delete_tool_path(data),
            class: 'tool-icon',
            method: :delete,
            data: { confirm: "Delete #{data.tool}?" }
  end

  private

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
end
