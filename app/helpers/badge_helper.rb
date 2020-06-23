# frozen_string_literal: true

module BadgeHelper
  def linked_badge_for(data)
    link_to data.tool,
            delete_tool_path(data),
            class: colour_for(data),
            method: :delete,
            data: { confirm: "Are you sure you want to delete #{data.tool}?" }
  end

  def linked_icon_for(data)
    link_to image_tag(data.icon_url),
            delete_tool_path(data),
            class: 'tool-icon',
            method: :delete,
            data: { confirm: "Are you sure you want to delete #{data.tool}?" }
  end

  def badge_for(data)
    "<span class='#{colour_for(data)}'>#{data.tool}</span>".html_safe
  end

  def linked_tag_for(data)
    link_to data.tag,
            delete_tag_path(data),
            class: colour_for(data),
            method: :delete,
            data: { confirm: "Are you sure you want to delete #{data.tag}?" }
  end

  def tag_for(data)
    "<span class='#{colour_for(data)}'>#{data.tag}</span>".html_safe
  end

  def icon_for(data); end

  private

  def colour_for(data)
    "badge badge-#{data.colour}"
  end
end
